import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeth_details.dart';

import 'screens/home_screen.dart';
import 'screens/sora_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLight = true;

  void toggleTheme() {
    setState(() {
      isLight = !isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(183, 147, 95, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.black,
          secondaryVariant: Colors.black,
          brightness: Brightness.light,
          primaryVariant: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Color.fromRGBO(20, 26, 46, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color.fromRGBO(250, 204, 29, 1),
          secondaryVariant: Colors.white,
          brightness: Brightness.dark,
          primaryVariant: Color.fromRGBO(20, 26, 46, 1),
        ),
      ),
      home: HomeScreen(toggleTheme),
      routes: {
        SoraDetails.routeName: (context) => SoraDetails(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
    );
  }
}
