import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/utils/utils.dart';

import '../widgets/widgets.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(QuizController(index, Get.find()));
    return GetBuilder<QuizController>(
      builder: (controller) {
        final section = controller.section;
        return CustomBackground1(
          child: Stack(
            children: [
              ..._buildBG(section.id),
              Positioned.fill(
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 8.h),
                      CustomAppBar(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: section.id == 0 ? 0 : 15.h,
                          ),
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
                      SizedBox(height: 9.h),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/png/wood_bg.png',
                            width: 330.r,
                            height: 505.r,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: 75.r,
                            left: 37.r,
                            bottom: 75.r,
                            child: GetBuilder<QuizController>(
                              builder: (controller) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(2, (index) {
                                    final questionsLength =
                                        section.blocks[index].length;
                                    final correctAnswers =
                                        controller.scores[index];
                                    final blocked =
                                        (index > 0) &&
                                        (section.blocks[0].length !=
                                            controller.scores[0]);
                                    return BlockCard(
                                      index: index,
                                      number: correctAnswers,
                                      allNumber: questionsLength,
                                      blocked: blocked,
                                      onTapStart:
                                          () => controller.goToQuestions(index),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ],
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
            ],
          ),
        );
      },
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
}
