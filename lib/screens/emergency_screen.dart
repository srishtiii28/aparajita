import 'package:flutter/material.dart';
import '../services/speech_service.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  final SpeechService _speechService = SpeechService();

  void _handleVoiceCommand(String text) {
    if (text.toLowerCase().contains("help")) {
      sendEmergencyAlert(); // Call the emergency function
    }
  }

  void sendEmergencyAlert() {
    print("🚨 Emergency Alert Triggered!");
    // Add your logic to send an alert (SMS, notification, etc.)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Emergency Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _speechService.startListening(_handleVoiceCommand),
          child: Text("Start Voice Command"),
        ),
      ),
    );
  }
}
