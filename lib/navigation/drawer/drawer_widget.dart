import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reference_development/navigation/drawer/drawertile.dart';
import 'package:reference_development/navigation/drawer/header_drawer.dart';
import 'package:reference_development/navigation/drawer/drawer_pages/profile_page.dart';
import 'package:reference_development/navigation/drawer/drawer_pages/favourite.dart';
import 'package:reference_development/navigation/drawer/drawer_pages/whats_new.dart';
import 'package:reference_development/navigation/drawer/drawer_pages/phone.dart';
import '../../constants/constants.dart';
import '../../login/login_page.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: AppColors.PRIMARY_COLOR_B,
      child: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            MyHeaderDrawer(),
            drawer_tile(
              Icons.person,
              "Profile",
              () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                ),
              },
            ),
            drawer_tile(
                Icons.lightbulb,
                "What's new",
                () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Whats_NewPage(),
                        ),
                      ),
                    }),
            drawer_tile(
                Icons.favorite,
                "Likes",
                () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FavouritesPage(),
                        ),
                      ),
                    }),
            drawer_tile(
                Icons.phone,
                "Phone",
                () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PhonePage(),
                        ),
                      ),
                    }),
            SizedBox(
              height: height * 0.11,
              child: Divider(
                color: AppColors.PRIMARY_COLOR,
              ),
            ),
            drawer_tile(
              Icons.logout,
              "Logout",
              () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
