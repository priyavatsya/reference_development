import 'package:flutter/material.dart';

import '../../drawer/drawer_widget.dart';
import '../btmNavigation.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('Notification'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[300],
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
