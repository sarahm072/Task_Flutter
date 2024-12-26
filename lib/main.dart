import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/login.dart';
import 'package:flutter_application_1/screen/singin.dart'; 

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, 
      theme: ThemeData(useMaterial3: true), 
      home: const SignUpPage(), 
      routes:{ 
        '/login':(context)=>const LoginPage(),
        '/home':(context) => const Home()},
    );
  }
}