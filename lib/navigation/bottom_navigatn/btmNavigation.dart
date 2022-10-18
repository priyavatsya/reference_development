import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:reference_development/constants/constants.dart';

class BtmNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: GNav(
          padding: const EdgeInsets.all(10),
          //backgroundColor: Colors.grey,
          // color: Colors.black,
          activeColor: AppColors.ACCENT_LIGHT,
          tabBackgroundColor: AppColors.DARK_LIGHT,
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.dashboard,
              text: 'Dashboard',
            ),
            GButton(icon: Icons.notifications, text: 'Notifications'),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
