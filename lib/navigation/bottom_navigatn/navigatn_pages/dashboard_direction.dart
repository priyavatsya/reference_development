import 'package:flutter/material.dart';

import '../../drawer/drawer_widget.dart';
import '../btmNavigation.dart';

class Dashboard_Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('Dashboard'),
          centerTitle: true,
          backgroundColor: Colors.green[800],
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
