import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/sora_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SoraDetails(),
    );
  }
}
