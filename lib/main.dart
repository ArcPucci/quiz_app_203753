import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/screens/screens.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    runApp(
      ScreenUtilInit(
        designSize: Size(390, 844),
        builder: (context, child) => const MyApp(),
      ),
    );
  }, (error, stack) {});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: MenuScreen());
  }
}
