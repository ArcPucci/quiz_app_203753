import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/utils/utils.dart';
import 'package:quiz_app_203753/widgets/widgets.dart';

import '../controllers/controllers.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final navController = Get.find<NavigationController>();
  final controller = PageController();

  int _index = 0;

  final list = [
    "Choose a sport and dive into the game! Can you tell fact from fiction? Let's find out!",
    "You receive a bold statement — decide: Is it true or not? Correct answers reveal new facts and levels!",
    "Spin the wheel, answer, and become a Sports Expert! Play boldly. Ready? Hit \"Start\"!",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: PageView(
              controller: controller,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (value) => setState(() => _index = value),
              children: [_buildPage1(), _buildPage2(), _buildPage3()],
            ),
          ),
          Positioned(
            bottom: 5.h,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomPageIndicator(index: _index),
                  SizedBox(height: 13.h),
                  SizedBox(
                    width: 331.w,
                    height: 198.h,
                    child: Stack(
                      children: [
                        CustomRectBg(
                          child: Padding(
                            padding: EdgeInsets.only(left: 22.r),
                            child: Text(
                              list[_index],
                              style: AppTextStyles.ts31,
                            ),
                          ),
                        ),
                        if (_index < list.length - 1)
                          Positioned(
                            left: 10.w,
                            bottom: 1.h,
                            child: GestureDetector(
                              onTap: skip,
                              child: Image.asset(
                                'assets/png/skip.png',
                                width: 77.r,
                                height: 37.r,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        Positioned(
                          right: 0,
                          bottom: 1.h,
                          child: GestureDetector(
                            onTap: next,
                            child: Image.asset(
                              'assets/png/next.png',
                              width: 136.r,
                              height: 47.r,
                              fit: BoxFit.fill,
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
          Positioned(
            top: 8.h,
            right: 31.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/settings.png',
                width: 62.r,
                height: 62.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage1() {
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
          Positioned(
            top: 0,
            left: 23.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/football.png',
                width: 175.r,
                height: 235.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 71.h,
            right: 14.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/tennis.png',
                width: 178.r,
                height: 221.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 246.h,
            left: 14.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/american_football.png',
                width: 160.r,
                height: 235.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 285.h,
            right: 20.w,
            child: SafeArea(
              child: Image.asset(
                'assets/png/basketball.png',
                width: 170.r,
                height: 235.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage2() {
    return CustomBackground2(
      child: Stack(
        children: [
          Positioned(
            top: 11.h,
            left: 35.w,
            child: SafeArea(
              child: Text(
                "Think fast, trust\nyour instincts — and\nbecome an expert!",
                style: AppTextStyles.ts36,
              ),
            ),
          ),
          Positioned(
            left: 8.w,
            bottom: 491.h,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Image.asset(
                      'assets/png/not_true.png',
                      width: 135.r,
                      height: 62.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Image.asset(
                    'assets/png/underline.png',
                    width: 122.r,
                    height: 12.r,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 3.w,
            bottom: 485.h,
            child: SafeArea(
              child: Column(
                children: [
                  Image.asset(
                    'assets/png/true.png',
                    width: 135.r,
                    height: 62.r,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 7.h),
                  Image.asset(
                    'assets/png/underline.png',
                    width: 122.r,
                    height: 12.r,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 240.h,
            child: SafeArea(
              child: Column(
                children: [
                  Image.asset(
                    'assets/png/question.png',
                    width: 43.r,
                    height: 77.r,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/png/man1.png',
                    width: 372.r,
                    height: 265.r,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage3() {
    return CustomBackground2(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 11.h,
            left: 35.w,
            child: SafeArea(
              child: Text(
                'This is not just a\ngame of "yes" or "no"',
                style: AppTextStyles.ts36,
              ),
            ),
          ),
          Positioned(
            top: 123.h,
            right: 0,
            child: SafeArea(
              child: Image.asset(
                'assets/png/circle.png',
                width: 230.r,
                height: 240.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 116.h,
            left: 5.w,
            child: SafeArea(
              child: Transform.rotate(
                angle: (pi * -20) / 180,
                child: Image.asset(
                  'assets/png/football.png',
                  width: 175.r,
                  height: 235.r,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 298.h,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Transform.rotate(
                  angle: (pi * 12) / 180,
                  child: Image.asset(
                    'assets/png/image1.png',
                    width: 241.r,
                    height: 221.r,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void skip() {
    navController.goToHome();
  }

  void next() {
    if (_index == list.length - 1) {
      navController.goToHome();
      return;
    }

    controller.animateToPage(
      _index + 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
