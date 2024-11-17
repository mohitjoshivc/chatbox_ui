import 'package:chatbox_ui/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Caros',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Caros',
              ),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
      home: LandingPage(),
    );
  }
}
