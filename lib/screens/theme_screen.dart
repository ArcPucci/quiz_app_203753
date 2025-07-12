import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/services/services.dart';
import 'package:quiz_app_203753/widgets/widgets.dart';

import '../utils/utils.dart';

class ThemeScreen extends StatelessWidget {
  ThemeScreen({super.key});

  final controller = Get.find<WheelController>();
  final navController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    final section =
        SectionsRepository.allSections[controller.selectedIndexValue];
    return CustomBackground1(
      child: Stack(
        children: [
          ..._buildBG(section.id),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  CustomAppBar(),
                  SizedBox(height: 9.h),
                  SizedBox(
                    height: 90.r,
                    child: Center(
                      child: Image.asset(
                        section.title,
                        width: section.titleWidth,
                        height: section.titleHeight,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  _buildImage(section.id),
                  Spacer(),
                  GestureDetector(
                    onTap: controller.goToQuiz,
                    child: Image.asset(
                      'assets/png/start1.png',
                      width: 148.r,
                      height: 92.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: Get.back,
                    child: Image.asset(
                      'assets/png/play_again.png',
                      width: 169.r,
                      height: 58.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Opacity(
                    opacity: 0.63,
                    child: Text(
                      "Scrolling the wheel again",
                      style: AppTextStyles.pp11,
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Positioned> _buildBG(int id) {
    if (id == 0) {
      return [
        Positioned(
          top: 68.h,
          left: -96.r,
          child: SafeArea(
            child: Transform.rotate(
              angle: (pi * 89) / 180,
              child: Image.asset(
                'assets/png/ball2.png',
                width: 190.r,
                height: 158.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          right: -147.r,
          bottom: -49.r,
          child: Image.asset(
            'assets/png/ball2.png',
            width: 257.r,
            height: 214.r,
            fit: BoxFit.fill,
          ),
        ),
      ];
    }

    if (id == 2) {
      return [
        Positioned(
          top: 78.h,
          left: -56.r,
          child: SafeArea(
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Image.asset(
                'assets/png/ball1.png',
                width: 130.r,
                height: 132.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          right: -107.r,
          bottom: 12.r,
          child: Image.asset(
            'assets/png/ball1.png',
            width: 215.r,
            height: 215.r,
            fit: BoxFit.fill,
          ),
        ),
      ];
    }

    if (id == 3) {
      return [
        Positioned(
          top: 57.h,
          left: -65.r,
          child: SafeArea(
            child: Image.asset(
              'assets/png/ball4.png',
              width: 137.r,
              height: 137.r,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          right: -75.r,
          bottom: 5.r,
          child: Transform.rotate(
            angle: (pi * 20) / pi,
            child: Image.asset(
              'assets/png/ball4.png',
              width: 196.r,
              height: 197.r,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ];
    }
    return [
      Positioned(
        top: 78.h,
        left: -76.r,
        child: SafeArea(
          child: Image.asset(
            'assets/png/ball3.png',
            width: 154.r,
            height: 154.r,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        right: -75.r,
        bottom: 17.r,
        child: Image.asset(
          'assets/png/ball3.png',
          width: 211.r,
          height: 213.r,
          fit: BoxFit.fill,
        ),
      ),
    ];
  }

  Widget _buildImage(int id) {
    if (id == 0) {
      return Image.asset(
        'assets/png/american_football.png',
        width: 223.r,
        height: 323.r,
        fit: BoxFit.fill,
      );
    }

    if (id == 1) {
      return Transform.rotate(
        angle: (pi * -6) / 180,
        child: Image.asset(
          'assets/png/football.png',
          width: 235.r,
          height: 315.r,
          fit: BoxFit.fill,
        ),
      );
    }

    if (id == 2) {
      return Transform.rotate(
        angle: (pi * -4) / 180,
        child: Image.asset(
          'assets/png/basketball.png',
          width: 241.r,
          height: 324.r,
          fit: BoxFit.fill,
        ),
      );
    }

    return Image.asset(
      'assets/png/tennis.png',
      width: 230.r,
      height: 307.r,
      fit: BoxFit.fill,
    );
  }
}
