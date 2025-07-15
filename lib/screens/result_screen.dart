import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();
    final section = controller.section;
    return CustomBackground1(
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildBG(section.id),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  CustomAppBar(
                    child: Padding(
                      padding: EdgeInsets.only(top: section.id == 0 ? 0 : 15.h),
                      child: SizedBox(
                        height: 90.r,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            section.title,
                            width: section.titleWidth,
                            height: section.titleHeight,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 38.w),
                      child: Text(
                        "Answer without\nmistakes — unlock\nthe complex questions!",
                        style: AppTextStyles.ts33,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: 128.h,
            child: SafeArea(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/png/wood_bg.png',
                    width: 330.r,
                    height: 506.r,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: 34.r,
                    bottom: 65.r,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/png/paper2.png',
                              width: 280.r,
                              height: 246.r,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 90.r,
                              left: 34.r,
                              child: Column(
                                children: [
                                  LabeledCounter(
                                    title: "Correct answers",
                                    value: controller.correctAnswers,
                                  ),
                                  SizedBox(height: 7.h),
                                  LabeledCounter(
                                    title: "Incorrect answers",
                                    value: controller.incorrectAnswers,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17.h),
                        GestureDetector(
                          onTap: controller.playAgain,
                          child: Image.asset(
                            'assets/png/play_again_2.png',
                            width: 169.r,
                            height: 58.r,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 27.h),
                        GestureDetector(
                          onTap: controller.goToMenu,
                          child: Image.asset(
                            'assets/png/menu.png',
                            width: 169.r,
                            height: 58.r,
                            fit: BoxFit.fill,
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
            right: 8.w,
            bottom: 66.h,
            child: SafeArea(
              top: false,
              child: Image.asset(
                'assets/png/image1.png',
                width: 178.r,
                height: 164.r,
                fit: BoxFit.fill,
              ),
            ),
          ),
          _getBall(section.id),
        ],
      ),
    );
  }

  Positioned _buildBG(int id) {
    if (id == 0) {
      return Positioned(
        right: -147.r,
        bottom: -49.r,
        child: Image.asset(
          'assets/png/ball2.png',
          width: 257.r,
          height: 214.r,
          fit: BoxFit.fill,
        ),
      );
    }

    if (id == 2) {
      return Positioned(
        right: -107.r,
        bottom: 12.r,
        child: Image.asset(
          'assets/png/ball1.png',
          width: 215.r,
          height: 215.r,
          fit: BoxFit.fill,
        ),
      );
    }

    if (id == 3) {
      return Positioned(
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
      );
    }
    return Positioned(
      right: -75.r,
      bottom: 17.r,
      child: Image.asset(
        'assets/png/ball3.png',
        width: 211.r,
        height: 213.r,
        fit: BoxFit.fill,
      ),
    );
  }

  Positioned _getBall(int id) {
    if (id == 0) {
      return Positioned(
        top: 88.h,
        left: 10.r,
        child: SafeArea(
          child: Transform.rotate(
            angle: (pi * -17) / 180,
            child: Image.asset(
              'assets/png/us_foot_ball.png',
              width: 93.r,
              height: 89.r,
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    }

    if (id == 1) {
      return Positioned(
        top: 95.h,
        left: 10.r,
        child: SafeArea(
          child: Image.asset(
            'assets/png/football_ball.png',
            width: 90.r,
            height: 90.r,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    if (id == 2) {
      return Positioned(
        top: 95.h,
        left: 10.r,
        child: SafeArea(
          child: Image.asset(
            'assets/png/basketball_ball.png',
            width: 90.r,
            height: 90.r,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    return Positioned(
      top: 120.h,
      left: 25.r,
      child: SafeArea(
        child: Image.asset(
          'assets/png/tennis_ball.png',
          width: 70.r,
          height: 70.r,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
