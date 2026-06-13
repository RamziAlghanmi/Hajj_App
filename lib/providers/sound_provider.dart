import 'package:flutter/material.dart';

class SoundProvider extends ChangeNotifier {
  String? _currentPlayingId;
  bool _isSoundEnabeld = false;
  bool get isSoundEnabeld => _isSoundEnabeld;
  bool isPlaying(String id) {
    return _currentPlayingId == id;
  }

  void toggleAudio(String id) {
    if (_currentPlayingId == id) {
      // إذا كان نفس الزر يعمل، أوقفه
      _currentPlayingId = null;
    } else {
      // أوقف أي زر سابق وشغل الحالي
      _currentPlayingId = id;
    }

    notifyListeners();
  }

  void toggleSound() {
    _isSoundEnabeld = !_isSoundEnabeld;
    notifyListeners();
  }
}
