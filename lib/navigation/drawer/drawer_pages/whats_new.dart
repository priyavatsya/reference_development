import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../bottom_navigatn/btmNavigation.dart';

class Whats_NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('New Things in Campus'),
          centerTitle: true,
          backgroundColor: AppColors.PRIMARY_COLOR_lIGHT2,
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
