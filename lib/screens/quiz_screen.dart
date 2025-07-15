import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/utils/utils.dart';

import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      builder: (controller) {
        final section = controller.section;
        return PopScope(
          canPop: false,
          child: CustomBackground1(
            child: Stack(
              children: [
                ..._buildBG(section.id),
                Positioned.fill(
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 8.h),
                        CustomAppBar(
                          hasPause: true,
                          onOpen: controller.pause,
                          onClose: controller.resume,
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
                        SizedBox(
                          height: 50.r,
                          child: Center(
                            child: Obx(() {
                              if (controller.answered.value) {
                                if (controller.correct.value) {
                                  return Image.asset(
                                    'assets/png/right.png',
                                    width: 97.r,
                                    height: 40.r,
                                    fit: BoxFit.fill,
                                  );
                                }
                                return Image.asset(
                                  'assets/png/wrong.png',
                                  width: 110.r,
                                  height: 37.r,
                                  fit: BoxFit.fill,
                                );
                              }
                              return Text(
                                "${controller.reminder}",
                                style: AppTextStyles.lo48,
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 9.h),
                        SizedBox(
                          width: 341.r,
                          height: 466.r,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/png/paper.png',
                                width: 341.r,
                                height: 466.r,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.r,
                                  bottom: 50.r,
                                ),
                                child: Obx(
                                  () => SizedBox(
                                    width: 260.r,
                                    child: Text(
                                      controller.question,
                                      style: AppTextStyles.ts33.copyWith(
                                        color: AppTheme.black1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 52.r,
                                child: Center(
                                  child: Obx(() {
                                    if (controller.answered.value) {
                                      return GestureDetector(
                                        onTap: controller.nextQuestion,
                                        child: Image.asset(
                                          'assets/png/next.png',
                                          width: 169.r,
                                          height: 58.r,
                                          fit: BoxFit.fill,
                                        ),
                                      );
                                    }

                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () => controller.answer(false),
                                          child: Image.asset(
                                            'assets/png/not_true.png',
                                            width: 135.r,
                                            height: 62.r,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => controller.answer(true),
                                          child: Image.asset(
                                            'assets/png/true.png',
                                            width: 135.r,
                                            height: 62.r,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Obx(
                          () => BorderedText(
                            text:
                                "${controller.questionIndex.value + 1} of ${controller.totalQuestions}",
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Opacity(
                          opacity: 0.63,
                          child: Text(
                            "Number of questions",
                            style: AppTextStyles.pp11,
                          ),
                        ),
                        SizedBox(height: 6.h),
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  if (controller.time.value == 0) return SizedBox();

                  return Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        color: Colors.black.withValues(alpha: 0.4),
                        alignment: Alignment.center,
                        child: Text(
                          "${controller.time.value}",
                          style: AppTextStyles.lo96,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
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
