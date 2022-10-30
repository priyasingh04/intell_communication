import 'package:flutter/material.dart';

import 'Screens/client_screen.dart';
import 'Screens/forget_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: const ClientScreen(),
    );
  }
}

