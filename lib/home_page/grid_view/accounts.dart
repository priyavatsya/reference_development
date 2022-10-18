import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Account'),
          centerTitle: true,
          backgroundColor: AppColors.PRIMARY_COLOR_B,
        ),
      );
}
