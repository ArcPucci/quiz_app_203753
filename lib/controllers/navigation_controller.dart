import 'package:get/get.dart';
import 'package:quiz_app_203753/screens/screens.dart';

class NavigationController extends GetxController {
  final RxInt currentIndex = 0.obs;

  void goToHome() {
    Get.off(() => MenuScreen());
  }

  void goToThemesWheel() {
    Get.to(() => WheelOfThemesScreen());
  }

  void goToQuiz(int id) {
    currentIndex.value = id;
    Get.to(() => QuizScreen(index: id));
  }
}
