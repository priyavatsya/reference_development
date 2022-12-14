import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

class Button_tile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  Button_tile(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: Padding_1,
      child: InkWell(
        splashColor: AppColors.PRIMARY_COLOR2,
        onTap: onPressed,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // ConstrainedBox(
                  //   constraints:
                  //       const BoxConstraints.tightFor(width: 100, height: 100),

                  // child: Text(
                  //   text,
                  //   style: kLabelStyle,
                  // ),
                  SizedBox(
                    height: height * 0.16,
                    width: width * 0.25,
                    child: ElevatedButton(
                      child: Text(
                        text,
                        style: kLabelStyle,
                      ),
                      // child: Text(text),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.PRIMARY_COLOR2,
                        textStyle: kLabelStyle,
                        shape: kRectangle,
                      ),
                    ),
                  ),
                  // ),
                  // const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
