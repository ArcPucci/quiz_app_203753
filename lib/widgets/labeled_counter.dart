import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class LabeledCounter extends StatelessWidget {
  const LabeledCounter({super.key, required this.title, required this.value});

  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyles.ts30),
          Container(
            width: 48.r,
            height: 49.r,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/png/border.png'),
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.center,
            child: Text("$value", style: AppTextStyles.ts45),
          ),
        ],
      ),
    );
  }
}
