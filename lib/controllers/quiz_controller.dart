import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/services/services.dart';

import '../models/models.dart';

class QuizController extends GetxController {
  QuizController(int index) {
    _section = SectionsRepository.allSections[index];
  }

  int get selectedSection =>
      Get.find<NavigationController>().currentIndex.value;

  Section _section = SectionsRepository.allSections[0];

  Section get section => _section;
}
