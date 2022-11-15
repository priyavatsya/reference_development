import 'package:flutter/material.dart';
import 'accounts.dart';
import 'button_tile.dart';
import 'package:reference_development/home_page/grid_view/events.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        shrinkWrap: true,
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(6.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              //childAspectRatio: 1,
              crossAxisCount: 3,
              children: <Widget>[
                Button_tile(
                  'Events',
                  () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Events())),
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Events(),
                    //   ),
                    // ),
                  },
                ),
                Button_tile(
                  'A/C',
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Account(),
                      ),
                    )
                  },
                ),
                Button_tile(
                    'Date',
                    () => {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Date(),
                          //   ),
                          // ),
                        }),
                Button_tile('Timer', () => {}),
                Button_tile('Alarm', () => {}),
                Button_tile('Notes', () => {}),
                Button_tile('Info', () => {}),
                Button_tile('Groups', () => {}),
                Button_tile('Help', () => {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
