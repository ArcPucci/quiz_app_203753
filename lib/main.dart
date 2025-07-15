import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/screens/screens.dart';
import 'package:quiz_app_203753/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    final preferences = await SharedPreferences.getInstance();
    final localDataService = LocalDataService(preferences);

    Get.put(localDataService);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(
      ScreenUtilInit(
        designSize: Size(390, 844),
        builder: (context, child) => MyApp(localDataService: localDataService),
      ),
    );
  }, (error, stack) {});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.localDataService});

  final LocalDataService localDataService;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final ConfigurationsController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(ConfigurationsController(widget.localDataService));
  }

  @override
  Widget build(BuildContext context) {
    final firstInit = widget.localDataService.getFirstInit();
    return GetMaterialApp(home: firstInit ? OnboardingScreen() : MenuScreen());
  }
}
