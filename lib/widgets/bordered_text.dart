import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.r,
      height: 96.r,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/png/border.png'),
          fit: BoxFit.fill,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyles.ts37.copyWith(
          color: Colors.white,
          letterSpacing: -2,
        ),
      ),
    );
  }
}
