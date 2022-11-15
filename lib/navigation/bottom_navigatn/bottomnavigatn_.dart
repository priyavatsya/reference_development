import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../home_page/home_screen.dart';
import 'navigatn_pages/favourites_page.dart';
import 'navigatn_pages/logout_page.dart';
import 'navigatn_pages/notes.dart';
import 'navigatn_pages/profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List pages = [
    HomeScreen(),
    ProfilePage(),
    FavouritesPage(),
    NotesPage(),
    LogoutPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColors.PRIMARY_COLOR_BDark,
        elevation: 25,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        iconSize: 25,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: AppColors.ORANGE,
        unselectedItemColor: AppColors.PRIMARY_DARK_LIGHT,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: 'Likes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_rounded), label: 'Note'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}
