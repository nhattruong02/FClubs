import 'package:fclubs/ui/chat/chat_page.dart';
import 'package:fclubs/ui/contact/contact_page.dart';
import 'package:fclubs/ui/menu/menu_page.dart';
import 'package:fclubs/utils/app/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ContactPage(),
    const ChatPage(),
    const MenuPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: AppColors.white,
          unselectedItemColor: const Color(0xFF0F1828),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.group,
                ),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
          ],
        ),
      ),
    );
  }
}
