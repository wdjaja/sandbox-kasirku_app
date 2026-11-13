import 'package:flutter/material.dart';
import 'package:kasirku_app/pages/cashier.dart';
import 'package:kasirku_app/pages/history.dart';
import 'package:kasirku_app/pages/home.dart';
import 'package:kasirku_app/pages/profile.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget get pages {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return CashierPage();
      case 2:
        return HistoryPage();
      case 3:
        return ProfilePage();
      default:
        return ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(LucideIcons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.receiptText),
            label: 'Kasir',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.fileClock),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
