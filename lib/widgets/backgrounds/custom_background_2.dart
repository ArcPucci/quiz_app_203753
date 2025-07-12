import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_203753/utils/utils.dart';

class CustomBackground2 extends StatelessWidget {
  const CustomBackground2({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Stack(
          children: [
            Positioned(
              left: -35.w,
              bottom: 195.h,
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
              top: 0,
              right: -44.w,
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
            Positioned.fill(child: child),
          ],
        ),
      ),
    );
  }
}
