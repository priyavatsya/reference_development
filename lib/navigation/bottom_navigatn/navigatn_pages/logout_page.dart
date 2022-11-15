import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

import '../../../login/login_page.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Logout'),
          leading: Icon(
            Icons.menu,
          ),
          centerTitle: true,
          backgroundColor: AppColors.PRIMARY_COLOR_LIGHT,
        ),
        body: Container(
          padding: Padding_1,
          child: Center(
            child: Container(
              padding: Padding_1,
              child: MaterialButton(
                shape: kRectangle,
                elevation: 5.0,
                height: Height2,
                onPressed: () {
                  _showDialog(context);
                },
                child: Text(
                  "LogOut",
                  style: TextStyle(
                    fontSize: FontSize1,
                  ),
                ),
                color: AppColors.PRIMARY_COLOR_LIGHT,
              ),
            ),
          ),
        ),
      );
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("LogOut"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.PRIMARY_DARK,
            fontSize: FontSize1),
        actionsOverflowButtonSpacing: 20,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text("Yes")),
        ],
        content: Text("Do you want to logout?"),
      );
    },
  );
}
