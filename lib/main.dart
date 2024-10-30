import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/screen/dashboard_screens/home_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/main_screen_for_web.dart';
import 'package:truckerbs_website/screen/website_screen/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const method = int.fromEnvironment('method', defaultValue: 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
          // const MainScreenForWeb(),
          //Call HomeScreen For Dashboard Of The Web.
          HomeScreenDashboard(),
        );
      },
    );
  }
}
