import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildSettingOption("📞 Add/Edit Emergency Contacts", Icons.contacts),
          _buildSettingOption("📡 Auto Nearby Alert", Icons.notification_important),
          _buildSettingOption("🔋 Battery Saver Mode", Icons.battery_saver),
          _buildSettingOption("🌐 Offline Emergency Mode", Icons.signal_wifi_off),
          _buildSettingOption("🏥 Medical Info", Icons.health_and_safety),
          _buildSettingOption("👤 Profile", Icons.person),
        ],
      ),
    );
  }

  Widget _buildSettingOption(String title, IconData icon) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.tealAccent),
        title: Text(title, style: TextStyle(color: Colors.white)),
        onTap: () {
          // TODO: Implement navigation
        },
      ),
    );
  }
}
