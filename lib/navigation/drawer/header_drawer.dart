import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MyHeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue.shade50,
            Colors.lightBlue.shade100,
            Colors.lightBlue.shade300,
            Colors.lightBlue.shade600,
          ],
        ),
      ),
      // color: Colors.blue[900],
      width: 300,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/google_logo.png'),
              ),
            ),
          ),
          Text(
            "User",
            style: kLabelStyle,
          ),
          Text(
            "reference@xyz.in",
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }
}
