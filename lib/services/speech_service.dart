import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechService {
  final stt.SpeechToText _speech = stt.SpeechToText();

  Future<void> startListening(Function(String) onResult) async {
    bool available = await _speech.initialize();
    if (available) {
      _speech.listen(onResult: (result) {
        onResult(result as String); // Handle the recognized text
      });
    }
  }

  void stopListening() {
    _speech.stop();
  }
}

