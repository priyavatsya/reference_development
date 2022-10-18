import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reference_development/constants/constants.dart';
import 'package:reference_development/home_page/carousel_view/banner.dart';
import 'package:reference_development/navigation/drawer/drawer_widget.dart';
import '../navigation/bottom_navigatn/btmNavigation.dart';
import '../theme/app_theme.dart';
import '../theme/change_theme_button.dart';
import 'grid_view/button_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        title: Text('Home'),
        backgroundColor: AppColors.PRIMARY_COLOR_BDark,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      drawer: DrawerWidget(), //Drawer Navigation
      body: Container(
        // height: height * 1,
        // width: width * 1,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BannerArea(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "My Activity",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ], //
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "You've Caught Up!",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ], //
                    ),
                  ),
                ),
                ButtonWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BtmNavigation(), //Bottom Navigation
    );
  }
}
