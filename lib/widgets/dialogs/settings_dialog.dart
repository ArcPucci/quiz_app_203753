import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_203753/utils/utils.dart';
import 'package:quiz_app_203753/widgets/widgets.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 187.h),
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
                      SizedBox(
                        width: 70.r,
                        height: 84.r,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Music", style: AppTextStyles.ts37),
                            CustomSwitch1(
                              initialValue: true,
                              onChanged: (value) {},
                            ),
                          ],
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
                              initialValue: true,
                              onChanged: (value) {},
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
