import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/quran_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentScreenIndex;
  @override
  void initState() {
    super.initState();
    currentScreenIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/bg3.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'إسلامي',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: QuranScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(183, 147, 95, 1),
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
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
