import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quiz_app_203753/screens/screens.dart';

import '../services/services.dart';

class ConfigurationsController extends GetxController {
  final LocalDataService _localDataService;
  final RxInt currentIndex = 0.obs;
  final RxBool audio = true.obs;
  final RxBool sound = true.obs;

  final AudioPlayer _player = AudioPlayer();

  ConfigurationsController(this._localDataService) {
    init();
  }

  void init() async {
    audio.value = _localDataService.getAudio();
    sound.value = _localDataService.getSound();
    if (audio.value || sound.value) await _playMusic();
  }

  Future<void> _playMusic() async {
    try {
      await _player.setAsset('assets/audio/bg_audio.mp3');
      await _player.setLoopMode(LoopMode.one);
      await _player.play();
    } catch (e) {
      print(e);
    }
  }

  void goToHome() async {
    Get.off(() => MenuScreen());
    await _localDataService.setFirstInit();
  }

  void goToThemesWheel() {
    Get.to(() => WheelOfThemesScreen());
  }

  void goToQuiz(int id) {
    currentIndex.value = id;
    Get.to(() => SectionScreen(index: id));
  }

  void toggleMusic(bool value) async {
    if (audio.value == value) return;
    audio.value = value;
    await _localDataService.setAudio(audio.value);
    if (audio.value && !sound.value) await _playMusic();
    if (!audio.value && !sound.value) await _player.stop();
  }

  void toggleSound(bool value) async {
    if (sound.value == value) return;
    sound.value = value;
    await _localDataService.setSound(sound.value);
    if (sound.value && !audio.value) await _playMusic();
    if (!sound.value && !audio.value) await _player.stop();
  }
}
