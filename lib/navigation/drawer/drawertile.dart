import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

class drawer_tile extends StatelessWidget {
  IconData icon;
  String text;
  final VoidCallback onTap;

  drawer_tile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
      child: InkWell(
        splashColor: AppColors.PRIMARY_COLOR_LIGHT,
        onTap: onTap,
        child: Container(
          height: height * 0.08,
          width: width * 0.03,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      text,
                      style: kLabelStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
