import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:truckerbs_website/models/road_report_model.dart';

class RoadReportService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Future<String> uploadFile(PlatformFile file, String pickedFileName) async {
  //   try {
  //     // Build a unique path
  //     final path = 'road_reports/${DateTime.now().millisecondsSinceEpoch}_$pickedFileName';
  //     final storageRef = _storage.ref().child(path);
  //
  //     // Kick off the right kind of upload:
  //     final UploadTask uploadTask;
  //     if (kIsWeb) {
  //       // Web: `bytes` is non-null because you passed `withData: true`
  //       final bytes = file.bytes!;
  //       uploadTask = storageRef.putData(
  //         bytes,
  //         SettableMetadata(contentType: 'image/jpeg'),
  //       );
  //     } else {
  //       // Mobile: use the local file path
  //       final localFile = File(file.path!);
  //       uploadTask = storageRef.putFile(
  //         localFile,
  //         SettableMetadata(contentType: 'image/jpeg'),
  //       );
  //     }
  //
  //     // Wait for completion and grab URL
  //     final snapshot = await uploadTask;
  //     return await snapshot.ref.getDownloadURL();
  //   } catch (e) {
  //     throw Exception('Failed to upload file: $e');
  //   }
  // }

  /// Uploads [file] to Firebase Storage under a unique path.
  /// On failure, shows a SnackBar and returns null.
  Future<String?> uploadFile(BuildContext context, dynamic file, String fileName) async {
    try {
      String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      String fileExtension = fileName.split('.').last;
      String storagePath = 'road_reports/$timestamp.$fileExtension';
      Reference storageRef = _storage.ref().child(storagePath);
      
      if (kIsWeb) {
        // Handle web file upload
        UploadTask uploadTask = storageRef.putData(
          await file.bytes,
          SettableMetadata(
            contentType: 'image/$fileExtension',
            customMetadata: {'fileName': fileName},
          ),
        );
        
        // Show upload progress
        uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
          double progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
          print('Upload progress: $progress%');
        });

        TaskSnapshot taskSnapshot = await uploadTask;
        return await taskSnapshot.ref.getDownloadURL();
      } else {
        // Handle mobile file upload
        UploadTask uploadTask = storageRef.putFile(file as File);
        
        // Show upload progress
        uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
          double progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
          print('Upload progress: $progress%');
        });

        TaskSnapshot taskSnapshot = await uploadTask;
        return await taskSnapshot.ref.getDownloadURL();
      }
    } catch (e) {
      print('File upload error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error uploading file: $e'),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }
  }

  Future<void> createRoadReport(RoadReportModel report) async {
    try {
      await _firestore.collection('road_reports').add(report.toMap());
    } catch (e) {
      print('Create report error: $e');
      throw Exception('Failed to create road report: $e');
    }
  }

  Stream<List<RoadReportModel>> getRoadReports() {
    return _firestore
        .collection('road_reports')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => RoadReportModel.fromMap(doc.data()))
          .toList();
    });
  }
}
