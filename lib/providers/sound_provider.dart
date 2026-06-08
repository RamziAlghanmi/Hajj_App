import 'package:flutter/material.dart';

class SoundProvider extends ChangeNotifier {
  bool _isAudioEnabled = true;
  bool _isSoundEnabeld = false;
  bool get isAudioEnabled => _isAudioEnabled;
  bool get isSoundEnabeld => _isSoundEnabeld;
  void toggleAudio() {
    _isAudioEnabled = !_isAudioEnabled;
    notifyListeners();
  }

  void toggleSound() {
    _isSoundEnabeld = !_isSoundEnabeld;
    notifyListeners();
  }
}
