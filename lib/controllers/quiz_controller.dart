import 'dart:async';

import 'package:get/get.dart';
import 'package:quiz_app_203753/controllers/controllers.dart';
import 'package:quiz_app_203753/screens/screens.dart';
import 'package:quiz_app_203753/services/services.dart';

import '../models/models.dart';

class QuizController extends GetxController {
  final LocalDataService _localDataService;

  QuizController(int index, this._localDataService) {
    _section = SectionsRepository.allSections[index];
    _scores = _localDataService.getScores(_section);
  }

  int get selectedSection =>
      Get.find<ConfigurationsController>().currentIndex.value;

  Section _section = SectionsRepository.allSections[0];

  Section get section => _section;

  int _selectedBlock = 0;
  List<Question> _questions = [];

  List<int> _scores = [0, 0];

  List<int> get scores => _scores;

  Timer? _introTimer;
  Timer? _timer;

  final RxInt time = 3.obs;
  final RxInt questionIndex = 0.obs;
  final RxBool answered = false.obs;
  final RxBool correct = true.obs;
  final RxInt reminder = 10.obs;

  int _correctAnswers = 0;

  int get correctAnswers => _correctAnswers;

  int get incorrectAnswers => _questions.length - _correctAnswers;

  int get totalQuestions => _questions.length;

  String get question => _questions[questionIndex.value].question;

  void goToQuestions(int index) {
    _selectedBlock = index;
    _questions = _section.blocks[index];
    Get.to(() => QuizScreen());

    startIntroTimer();
  }

  void startIntroTimer() {
    if (_introTimer?.isActive ?? false) return;

    _questions.shuffle();
    time.value = 3;
    questionIndex.value = 0;
    answered.value = false;
    _correctAnswers = 0;
    print(_questions[questionIndex.value].isTrue);

    _introTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time.value == 0) {
        _introTimer?.cancel();
        _updateTimer();
        return;
      }

      time.value--;
    });
  }

  void answer(bool value) {
    answered.value = true;
    correct.value = value == _questions[questionIndex.value].isTrue;
    if (correct.value) _correctAnswers++;
    _timer?.cancel();
  }

  void nextQuestion() async {
    if (questionIndex.value == _questions.length - 1) {
      if (_scores[_selectedBlock] < _correctAnswers) {
        _scores[_selectedBlock] = _correctAnswers;
        await _localDataService.setScores(section, _scores);
      }

      Get.off(() => ResultScreen());
      update();
      return;
    }

    questionIndex.value++;
    answered.value = false;
    print(_questions[questionIndex.value].isTrue);

    _updateTimer();
  }

  void playAgain() {
    Get.off(() => QuizScreen());
    startIntroTimer();
  }

  void goToMenu() {
    Get.offAll(() => MenuScreen());
  }

  void pause() {
    _timer?.cancel();
  }

  void resume() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      reminder.value--;

      if (reminder.value == 0) {
        answered.value = true;
        correct.value = false;
        _timer?.cancel();
        return;
      }
    });
  }

  void _updateTimer() {
    if (_timer?.isActive ?? false) return;
    reminder.value = 10;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      reminder.value--;

      if (reminder.value == 0) {
        answered.value = true;
        correct.value = false;
        _timer?.cancel();
        return;
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _introTimer?.cancel();
    super.dispose();
  }
}
