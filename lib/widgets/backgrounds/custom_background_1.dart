import 'package:flutter/material.dart';
import 'package:quiz_app_203753/utils/utils.dart';

class CustomBackground1 extends StatelessWidget {
  const CustomBackground1({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: child,
      ),
    );
  }
}
