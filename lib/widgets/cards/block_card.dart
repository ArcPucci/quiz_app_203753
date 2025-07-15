import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/utils.dart';

class BlockCard extends StatelessWidget {
  const BlockCard({
    super.key,
    required this.index,
    this.blocked = false,
    this.onTapStart,
    required this.number,
    required this.allNumber,
  });

  final int index;
  final int number;
  final int allNumber;
  final bool blocked;
  final VoidCallback? onTapStart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.r,
      height: 162.r,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            child: Stack(
              children: [
                Image.asset(
                  'assets/png/block${index + 1}.png',
                  width: 258.r,
                  height: 161.r,
                  fit: BoxFit.fill,
                ),
                if (!blocked) ...[
                  Positioned(
                    top: 18.r,
                    right: 20.r,
                    child: Transform.rotate(
                      angle: (pi * -3.4) / 180,
                      child: Text("Correct answers", style: AppTextStyles.ts16),
                    ),
                  ),
                  Positioned(
                    top: 38.r,
                    right: 20.r,
                    child: Container(
                      width: 59.r,
                      height: 56.r,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/png/border.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Transform.rotate(
                        angle: (pi * -3.4) / 180,
                        child: Text(
                          "$number of $allNumber",
                          style: AppTextStyles.ts20,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (!blocked)
            Positioned(
              right: 15.r,
              bottom: 18.r,
              child: GestureDetector(
                onTap: onTapStart,
                child: Image.asset(
                  'assets/png/start3.png',
                  width: 96.r,
                  height: 55.r,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          if (blocked)
            Positioned(
              right: 0,
              child: Image.asset(
                'assets/png/blocked.png',
                width: 129.r,
                height: 128.r,
                fit: BoxFit.fill,
              ),
            ),
        ],
      ),
    );
  }
}
