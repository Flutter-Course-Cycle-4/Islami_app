import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeth_details.dart';

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
      home: HomeScreen(),
      routes: {
        SoraDetails.routeName: (context) => SoraDetails(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
    );
  }
}
