import 'package:flutter/material.dart';
import 'package:flutter_application_2/telas/login_gerente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/LoginScreen",
      routes: {
        '/LoginScreen': (context) => LoginScreen(),
        '/MenuScreen': (context) => MenuScreen(),
      },
    );
  }
}