import 'package:flutter/material.dart';

import '../../drawer/drawer_widget.dart';
import '../btmNavigation.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('Settings'),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
