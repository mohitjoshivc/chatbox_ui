import 'package:chatbox_ui/pages/login_page.dart';
import 'package:chatbox_ui/pages/signup_page.dart';
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
      home: SignupPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Caros',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Caros',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
