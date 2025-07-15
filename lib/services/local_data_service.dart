import 'package:quiz_app_203753/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataService {
  final SharedPreferences _preferences;

  LocalDataService(this._preferences);

  static const _audioKey = "AUDIO";
  static const _soundKey = "SOUND";
  static const _firstInitKey = "FIRST_INIT";

  Future<void> setAudio(bool value) async {
    await _preferences.setBool(_audioKey, value);
  }

  bool getAudio() {
    return _preferences.getBool(_audioKey) ?? true;
  }

  Future<void> setSound(bool value) async {
    await _preferences.setBool(_soundKey, value);
  }

  bool getSound() {
    return _preferences.getBool(_soundKey) ?? true;
  }

  Future<void> setScores(Section section, List<int> scores) async {
    final key = "${section.title}_score";
    final map = scores.map((e) => e.toString()).toList();
    await _preferences.setStringList(key, map);
  }

  List<int> getScores(Section section) {
    final key = "${section.title}_score";
    final map = _preferences.getStringList(key);
    return map?.map((e) => int.parse(e)).toList() ?? [0, 0];
  }

  Future<void> setFirstInit() async {
    await _preferences.setBool(_firstInitKey, false);
  }

  bool getFirstInit() {
    return _preferences.getBool(_firstInitKey) ?? true;
  }
}
