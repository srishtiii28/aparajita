import 'package:flutter/material.dart';

class NearbySosScreen extends StatelessWidget {
  final List<Map<String, dynamic>> sosAlerts = [
    {"distance": "200m", "location": "Park Street", "time": "2 mins ago"},
    {"distance": "500m", "location": "College Square", "time": "5 mins ago"},
    {"distance": "1.2km", "location": "New Market", "time": "10 mins ago"},
  ];

  const NearbySosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nearby SOS Alerts")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: sosAlerts.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[900],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.redAccent),
              title: Text(
                "🚨 SOS Alert - ${sosAlerts[index]['location']}",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              subtitle: Text(
                "📍 ${sosAlerts[index]['distance']} • ⏳ ${sosAlerts[index]['time']}",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  // TODO: Implement Navigation to location
                },
                child: Text("Go to Location"),
              ),
            ),
          );
        },
      ),
    );
  }
}
