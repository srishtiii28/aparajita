import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final TextEditingController _descriptionController = TextEditingController();

  void _uploadMedia() {
    // TODO: Implement media upload
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("📸 Media uploaded successfully!")),
    );
  }

  void _submitReport() {
    // TODO: Implement report submission
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("✅ Report submitted successfully!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report Incident")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Describe the incident...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[900],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildUploadButton(Icons.camera_alt, "Upload Media"),
                _buildUploadButton(Icons.audiotrack, "Upload Audio"),
                _buildUploadButton(Icons.location_on, "Share Location"),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[700],
              ),
              onPressed: _submitReport,
              child: Text("Submit Report", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 30, color: Colors.blueAccent),
          onPressed: _uploadMedia,
        ),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.white70)),
      ],
    );
  }
}
