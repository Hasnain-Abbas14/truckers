

import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //const method = int.fromEnvironment('method', defaultValue: 1);
  //WidgetsFlutterBinding.ensureInitialized();

  // await Supabase.initialize(
  //   url: 'https://xxkdauoxphoiviwggfgs.supabase.co',
  //   anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh4a2RhdW94cGhvaXZpd2dnZmdzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE0NTY2NjgsImV4cCI6MjA0NzAzMjY2OH0.AZ4h5kXhVdJyFz3U8Bgutj4mkDmGJCYaC-aR5VOBlvk',
  // );
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB9UQ8guV3jPU14yF2rFXo0Elx6aGBc4eQ",
            authDomain: "truckersbs44.firebaseapp.com",
            projectId: "truckersbs44",
            storageBucket: "truckersbs44.firebasestorage.app",
            messagingSenderId: "29492259670",
            appId: "1:29492259670:web:90e0bf0102106cdaf504f7",
            measurementId: "G-KXQQ3GYYX9"));
    //var factory = databaseFactoryWeb;
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Image Upload',
      home: const ImageUploadPage(),
    );
  }
}

class ImageUploadPage extends StatefulWidget {
  const ImageUploadPage({super.key});
  @override
  State<ImageUploadPage> createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  html.File? _file;
  UploadTask? _uploadTask;
  double _progress = 0;
  String? _downloadUrl;

  void _pickImage() {
    final uploadInput = html.FileUploadInputElement()
      ..accept = 'image/*'
      ..multiple = false;
    uploadInput.click();
    uploadInput.onChange.listen((_) {
      final files = uploadInput.files;
      if (files != null && files.isNotEmpty) {
        setState(() {
          _file = files.first;
        });
      }
    });
  }

  Future<void> _uploadToFirebase() async {
    if (_file == null) return;

    final fileName = '${DateTime.now().millisecondsSinceEpoch}_${_file!.name}';
    final storageRef = FirebaseStorage.instance.ref('uploads/$fileName');

    // start upload
    _uploadTask = storageRef.putBlob(_file!);
    _uploadTask!.snapshotEvents.listen((event) {
      final bytesTransferred = event.bytesTransferred;
      final totalBytes = event.totalBytes;
      setState(() {
        _progress = bytesTransferred / totalBytes;
      });
    });

    await _uploadTask;
    final url = await storageRef.getDownloadURL();

    // save URL to Firestore
    await FirebaseFirestore.instance.collection('images').add({
      'url': url,
      'uploaded_at': FieldValue.serverTimestamp(),
    });

    setState(() {
      _downloadUrl = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Image to Firebase')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_library),
              label: const Text('Pick Image'),
              onPressed: _pickImage,
            ),
            if (_file != null) ...[
              const SizedBox(height: 16),
              Text('Selected: ${_file!.name}'),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                icon: const Icon(Icons.cloud_upload),
                label: const Text('Upload'),
                onPressed: _uploadTask == null ? _uploadToFirebase : null,
              ),
            ],
            if (_uploadTask != null) ...[
              const SizedBox(height: 16),
              LinearProgressIndicator(value: _progress),
              Text('${(_progress * 100).toStringAsFixed(0)}%'),
            ],
            if (_downloadUrl != null) ...[
              const SizedBox(height: 24),
              const Text('Uploaded! Preview below:'),
              const SizedBox(height: 8),
              Image.network(_downloadUrl!),
            ],
          ],
        ),
      ),
    );
  }
}
