import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../bottom_navigatn/btmNavigation.dart';

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Call History'),
          centerTitle: true,
          backgroundColor: AppColors.PRIMARY_COLOR_B,
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
