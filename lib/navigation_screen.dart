import 'package:flutter/material.dart';
import 'call_screen.dart';
import 'home_screen.dart';
import 'profil_screen.dart';
import 'statuses_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        const StatusesScreen(),
        const ProfilScreen(),
        const CallScreen(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color.fromARGB(255, 199, 255, 188),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          animationDuration: const Duration(milliseconds: 500),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(
                Icons.chat,
                color: Color.fromARGB(255, 7, 65, 37),
              ),
              label: "Chats",
            ),
            NavigationDestination(
              icon: Icon(Icons.refresh_outlined),
              selectedIcon: Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 7, 65, 37),
              ),
              label: "Updates",
            ),
            NavigationDestination(
              icon: Icon(Icons.people_outlined),
              selectedIcon: Icon(
                Icons.people,
                color: Color.fromARGB(255, 7, 65, 37),
              ),
              label: "Communities",
            ),
            NavigationDestination(
              icon: Icon(Icons.call_outlined),
              selectedIcon: Icon(
                Icons.call,
                color: Color.fromARGB(255, 7, 65, 37),
              ),
              label: "Calls",
            ),
          ],
        ),
      ),
    );
  }
}
