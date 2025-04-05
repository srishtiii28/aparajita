import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AparajitaApp());
}

class AparajitaApp extends StatelessWidget {
  const AparajitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aparajita - Women Safety',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Montserrat', // ✅ Better font
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold, // ✅ "Aparajita" is bolder
            color: Colors.pink.shade900,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink.shade700, // ✅ Button color
            foregroundColor: Colors.white, // ✅ Button text color
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      initialRoute: '/', // ✅ Define initial route
      routes: {
        '/': (context) => HomeScreen(), // ✅ Home page
        
      },
    );
  }
}
