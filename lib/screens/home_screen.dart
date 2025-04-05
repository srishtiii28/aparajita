import 'package:flutter/material.dart';
import 'sos_screen.dart';
import 'report_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "APARAJITA",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 32, 
            fontWeight: FontWeight.bold, 
            letterSpacing: 2,
            color: Colors.pink, 
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuButton(
              context,
              "🚨 Send SOS",
              SosScreen(),
              Colors.red,
            ),
            SizedBox(height: 16),
            _buildMenuButton(
              context,
              "📢 Nearby SOS Alerts",
              ReportScreen(),
              Colors.yellow,
            ),
            SizedBox(height: 16),
            _buildMenuButton(
              context,
              "📝 Report Incident",
              ReportScreen(),
              Colors.blue,
            ),
            SizedBox(height: 16),
            _buildMenuButton(
              context,
              "⚙️ Settings",
              SettingsScreen(),
              Colors.lightGreenAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String text, Widget screen, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(double.infinity, 60),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}