import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class CustomRectBg extends StatelessWidget {
  const CustomRectBg({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 323.w,
      height: 196.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 15.h,
            right: 0,
            child: Container(
              width: 313.w,
              height: 170.h,
              decoration: BoxDecoration(
                gradient: AppTheme.whiteGradient3,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Positioned(
            top: 7.h,
            child: Container(
              width: 313.w,
              height: 170.h,
              decoration: BoxDecoration(
                gradient: AppTheme.whiteGradient2,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 313.w,
              height: 170.h,
              decoration: BoxDecoration(
                gradient: AppTheme.whiteGradient1,
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
