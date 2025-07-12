import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dialogs/dialogs.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSettings(context),
      child: Image.asset(
        'assets/png/settings.png',
        width: 62.r,
        height: 62.r,
        fit: BoxFit.fill,
      ),
    );
  }

  void showSettings(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.25),
      builder: (context) => SettingsDialog(),
    );
  }
}
