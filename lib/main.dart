import 'package:flutter/material.dart';
import 'package:mylogin/screens/registerscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login ',
      home: RegisterPage(),
    );
  }
}
