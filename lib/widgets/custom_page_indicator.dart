import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          3,
          (index) => SizedBox(
            width: 13.r,
            height: 13.r,
            child: Center(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child:
                    index == this.index
                        ? Image.asset(
                          'assets/png/yellow_ellipse.png',
                          fit: BoxFit.fill,
                        )
                        : Image.asset(
                          'assets/png/white_ellipse.png',
                          width: 11.r,
                          height: 11.r,
                          fit: BoxFit.fill,
                        ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
