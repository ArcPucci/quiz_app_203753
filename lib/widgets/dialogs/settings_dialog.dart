import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app_203753/utils/utils.dart';
import 'package:quiz_app_203753/widgets/widgets.dart';

import '../../controllers/controllers.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key, this.hasPause = false});

  final bool hasPause;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ConfigurationsController>();
    return Material(
      type: MaterialType.transparency,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 187.h - (hasPause ? 75.r : 0)),
              if (hasPause)
                Padding(
                  padding: EdgeInsets.only(bottom: 32.h),
                  child: SizedBox(
                    height: 48.r,
                    child: Text("Pause", style: AppTextStyles.lo48),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 50.r),
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Image.asset(
                      'assets/png/settings2.png',
                      width: 221.r,
                      height: 71.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 11.r),
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Image.asset(
                      'assets/png/close.png',
                      width: 45.r,
                      height: 45.r,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Padding(
                padding: EdgeInsets.only(right: 13.r),
                child: CustomRectBg(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => SizedBox(
                          width: 70.r,
                          height: 84.r,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Music", style: AppTextStyles.ts37),
                              CustomSwitch1(
                                initialValue: controller.audio.value,
                                onChanged: controller.toggleMusic,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      SizedBox(
                        width: 70.r,
                        height: 84.r,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("sound", style: AppTextStyles.ts37),
                            CustomSwitch1(
                              initialValue: controller.sound.value,
                              onChanged: controller.toggleSound,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
