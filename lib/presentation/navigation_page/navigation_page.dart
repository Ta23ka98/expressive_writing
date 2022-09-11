import 'package:expressive_writing/presentation/calender_page/calender_page.dart';
import 'package:expressive_writing/presentation/setting_page/settings_page.dart';
import 'package:expressive_writing/presentation/user_page/user_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int selectedPage = 0;
  final pageItems = [
    const CalenderPage(),
    const UserPage(),
    const SettingsPage(),
  ];

  void onPageSelection(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expressive Writing")),
      body: pageItems[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onPageSelection,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Diary"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
