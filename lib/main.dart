import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:truckerbs_website/screen/dashboard_screens/home_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/main_screen_for_web.dart';
import 'package:truckerbs_website/screen/website_screen/home_screen/home_screen.dart';

void main() async{
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
            measurementId: "G-KXQQ3GYYX9"

        )
    );
    //var factory = databaseFactoryWeb;
  } else {
    await Firebase.initializeApp();

  }
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            print('firebase connected');

          }
          return  ScreenUtilInit(
            designSize: const Size(1440, 1047),
            minTextAdapt: true,
            splitScreenMode: true, // Make sure this parameter is available in your version of flutter_screenutil
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
                ),
                home:
                // for website call MainScreenForWeb
                const
               MainScreenForWeb(),
                //Call HomeScreen For Dashboard Of The Web.
               // HomeScreenDashboard(),
              );
            },
          );
        });





  }
}
