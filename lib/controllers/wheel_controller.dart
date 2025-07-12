import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../screens/screens.dart';
import 'controllers.dart';

class WheelController extends GetxController {
  final items = [
    "basket",
    "ten",
    "us",
    "foot",
    "ten",
    "us",
    "basket",
    "foot",
    "ten",
    "us",
  ];

  final RxDouble rotationAngle = 0.0.obs;
  final RxBool isSpinning = false.obs;
  final RxInt selectedIndex = (-1).obs;

  int get selectedIndexValue => switch (items[selectedIndex.value]) {
    'us' => 0,
    'foot' => 1,
    'basket' => 2,
    'ten' => 3,
    _ => 0,
  };

  void spinWheel() {
    if (isSpinning.value) return;

    isSpinning.value = true;
    selectedIndex.value = -1;

    const int fullRotations = 5;
    final int winningIndex = Random().nextInt(items.length);
    final double endAngle = (fullRotations * 360) + (360 - (winningIndex * 36));

    const Duration spinDuration = Duration(seconds: 5);
    final DateTime startTime = DateTime.now();
    final double startAngle = rotationAngle.value % 360;

    void animate() {
      final double elapsed =
          (DateTime.now().difference(startTime)).inMilliseconds /
          spinDuration.inMilliseconds;

      if (elapsed < 1) {
        final double curvedValue = Curves.easeOut.transform(elapsed);
        rotationAngle.value =
            startAngle + (endAngle - startAngle) * curvedValue;
        Future.delayed(const Duration(milliseconds: 16), animate);
      } else {
        rotationAngle.value = endAngle;
        isSpinning.value = false;
        selectedIndex.value = winningIndex;

        print(items[winningIndex]);
        Get.to(() => ThemeScreen());
      }
    }

    animate();
  }

  void goToQuiz() {
    final controller = Get.find<NavigationController>();
    controller.goToQuiz(selectedIndex.value);
  }
}
