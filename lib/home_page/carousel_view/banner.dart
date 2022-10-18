import 'package:flutter/material.dart';
import 'package:reference_development/home_page/carousel_view/variable.dart';

import '../../constants/constants.dart';

class BannerArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = <Widget>[];

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: kDecoration,
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.PRIMARY_DARK_LIGHT,
                //       offset: Offset(2.0, 2.0),
                //       blurRadius: 5.0,
                //       spreadRadius: 1.0)
                // ],
                //),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  bannerImage[x],
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }

    return Container(
      width: width * 1,
      height: height * 0.3,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
