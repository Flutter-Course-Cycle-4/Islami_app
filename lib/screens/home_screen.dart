import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/widgets/hadeth_screen_widgets/hadeth_screen.dart';
import 'package:islami_app/widgets/radio_screen.dart';
import 'package:islami_app/widgets/tasbeeh_screen.dart';

import '../widgets/quran_screen_widgets/quran_screen.dart';

class HomeScreen extends StatefulWidget {
  Function toggleTheme;

  HomeScreen(this.toggleTheme);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentScreenIndex;
  List screens = [
    RadioScreen(),
    TasbeehScreen(),
    HadethScreen(),
    QuranScreen(),
  ];
  @override
  void initState() {
    super.initState();
    currentScreenIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/${isLight ? 'bg3' : 'bg_dark'}.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Theme.of(context).colorScheme.brightness,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'إسلامي',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondaryVariant,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          actions: [
            Switch.adaptive(
              value: isLight,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (value) {
                widget.toggleTheme();
              },
            ),
          ],
        ),
        body: screens[currentScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          iconSize: 36,
          selectedLabelStyle: TextStyle(
            fontSize: 16,
          ),
          onTap: (index) {
            setState(() {
              currentScreenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/radio_ic.png'),
                ),
                label: 'راديو'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/sebha_ic.png'),
                ),
                label: 'تسبيح'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/hadeth_ic.png'),
                ),
                label: 'الحديث'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/quran_ic.png'),
                ),
                label: 'القرآن'),
          ],
        ),
      ),
    );
  }
}
