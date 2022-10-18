import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../bottom_navigatn/btmNavigation.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Favourites'),
          centerTitle: true,
          backgroundColor: AppColors.BRIGHT_COLOR,
        ),
        bottomNavigationBar: BtmNavigation(),
      );
}
