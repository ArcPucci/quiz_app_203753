import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/utils/utils.dart';
import 'package:quiz_app_203753/widgets/widgets.dart';

import '../controllers/controllers.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ConfigurationsController>();
    return CustomBackground1(
      child: Stack(
        children: [
          Positioned(
            top: 71.h,
            left: -35.w,
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
            top: 41.h,
            right: -34.w,
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
            right: -45.w,
            bottom: 74.h,
            child: SafeArea(
              child: Image.asset(
                'assets/png/ball3.png',
                width: 131.r,
                height: 131.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: -52.w,
            bottom: 8.h,
            child: Image.asset(
              'assets/png/ball2.png',
              width: 150.r,
              height: 125.r,
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      SizedBox(width: 34.w),
                      Text(
                        "Select a sports\ndiscipline to get started.",
                        style: AppTextStyles.ts33,
                      ),
                      Spacer(),
                      SettingsButton(),
                      SizedBox(width: 27.w),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 330.r,
                        height: 505.r,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/png/wood_bg.png'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, -1),
                              blurRadius: 15,
                              color: Colors.black.withValues(alpha: 0.25),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22.h,
                              left: 35.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/png/football.png',
                                    width: 115.r,
                                    height: 156.r,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: GestureDetector(
                                      onTap: () => controller.goToQuiz(1),
                                      child: Image.asset(
                                        'assets/png/start1.png',
                                        width: 75.r,
                                        height: 54.r,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 235.h,
                              left: 45.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/png/american_football.png',
                                    width: 98.r,
                                    height: 142.r,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(height: 8.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Transform.rotate(
                                      angle: (12 * pi) / 180,
                                      child: GestureDetector(
                                        onTap: () => controller.goToQuiz(0),
                                        child: Image.asset(
                                          'assets/png/start2.png',
                                          width: 75.r,
                                          height: 54.r,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 30.h,
                              right: 29.w,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/png/tennis.png',
                                    width: 133.r,
                                    height: 167.r,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: GestureDetector(
                                      onTap: () => controller.goToQuiz(3),
                                      child: Image.asset(
                                        'assets/png/start2.png',
                                        width: 75.r,
                                        height: 54.r,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 252.h,
                              right: 29.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/png/basketball.png',
                                    width: 125.r,
                                    height: 162.r,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Transform.rotate(
                                      angle: (6 * pi) / 180,
                                      child: GestureDetector(
                                        onTap: () => controller.goToQuiz(2),
                                        child: Image.asset(
                                          'assets/png/start1.png',
                                          width: 75.r,
                                          height: 54.r,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: controller.goToThemesWheel,
                    child: Image.asset(
                      'assets/png/wheel_themes.png',
                      width: 169.r,
                      height: 75.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 27.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
