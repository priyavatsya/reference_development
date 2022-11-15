import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          leading: Icon(
            Icons.menu,
          ),
          centerTitle: true,
          backgroundColor: AppColors.ORANGE,
        ),
      );
}
