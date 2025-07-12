import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/utils/utils.dart';

import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

class WheelOfThemesScreen extends StatelessWidget {
  WheelOfThemesScreen({super.key});

  final controller = Get.put(WheelController());

  @override
  Widget build(BuildContext context) {
    return CustomBackground1(
      child: Stack(
        children: [
          Positioned(
            top: 150.h,
            left: -40.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/ball4.png',
                width: 131.r,
                height: 131.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            right: -65.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/ball1.png',
                width: 131.r,
                height: 131.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            right: -61.w,
            bottom: 53.h,
            child: SafeArea(
              child: Image.asset(
                'assets/png/ball3.png',
                width: 143.r,
                height: 145.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: -70.w,
            bottom: 14.h,
            child: SafeArea(
              child: Image.asset(
                'assets/png/ball2.png',
                width: 150.r,
                height: 125.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  CustomAppBar(
                    child: Image.asset(
                      'assets/png/wheel_of_themes.png',
                      width: 150.r,
                      height: 70.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 27.h),
                  Text(
                    "Press Start — the wheel\nwill automatically select a\nsport for the questions.",
                    style: AppTextStyles.ts33,
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: 380.r,
                    height: 402.r,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Obx(
                            () => Transform.rotate(
                              angle:
                                  controller.rotationAngle.value * (pi / 180),
                              child: Image.asset(
                                'assets/png/fortune_circle.png',
                                width: 380.r,
                                height: 380.r,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Image.asset(
                            'assets/png/indicator.png',
                            width: 49.r,
                            height: 58.r,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: controller.spinWheel,
                    child: Image.asset(
                      'assets/png/start1.png',
                      width: 148.r,
                      height: 92.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Opacity(
                    opacity: 0.63,
                    child: Text(
                      "Random topic selection",
                      style: AppTextStyles.pp11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
