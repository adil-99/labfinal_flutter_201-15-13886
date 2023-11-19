import 'package:flutter/material.dart';

import 'calculator/scientificCalculator.dart';
import 'protfolio_screen.dart';
import 'quizapp/screens/quiz_screen.dart';
import 'weather_Screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions =  [
    WeatherScreen(),
    ScientificCalculator(),
   QuizScreen(),
   PortfolioScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              label: "Weather",
              backgroundColor: Color.fromARGB(255, 154, 210, 22),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
              backgroundColor: Color.fromARGB(255, 43, 16, 198),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quick_contacts_mail),
              label: "Quiz",
              backgroundColor: Color.fromARGB(255, 172, 7, 7),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Color.fromARGB(255, 122, 11, 166),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
