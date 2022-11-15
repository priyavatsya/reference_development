// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class EnticerOpenerPage extends StatefulWidget {
//   final VoidCallback getStartedPressed;
//
//   const EnticerOpenerPage({
//     Key? key,
//     required this.getStartedPressed,
//   }) : super(key: key);
//
//   @override
//   _EnticerOpenerPageState createState() => _EnticerOpenerPageState();
// }
//
// class _EnticerOpenerPageState extends State<EnticerOpenerPage> {
//   final List<String> textOpeners = ['HELLO,\r\nWELCOME\r\nTO\r\nFLUTTER'];
//
//   int index = 1;
//   bool showStartCard = false;
//
//   @override
//   void initState() {
//     Timer.periodic(
//       Duration(seconds: 5),
//       (timer) {
//         setState(() {
//           // if (index == 5) {
//           //   timer.cancel();
//           //   setState(() {
//           //     showStartCard = true;
//           //   });
//           // } else {
//           //   index++;
//           // }
//         });
//       },
//     );
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       switchInCurve: Curves.fastOutSlowIn,
//       transitionBuilder: (widget, animation) {
//         final zoomAnimation = Tween(begin: 1.0, end: 1.3).animate(animation);
//         final fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(
//           CurvedAnimation(
//             parent: animation,
//             curve: Interval(0.0, 0.2, curve: Curves.ease),
//           ),
//         );
//         return FadeTransition(
//           opacity: fadeAnimation,
//           child: ScaleTransition(
//             scale: zoomAnimation,
//             child: widget,
//           ),
//         );
//       },
//       duration: const Duration(milliseconds: 2000),
//       child: Container(
//         child: Stack(
//           children: [
//             Center(
//               child: Text(
//                 textOpeners[index - 1],
//                 style: Theme.of(context).textTheme.headline3!.copyWith(
//                       fontWeight: FontWeight.w900,
//                       // color: Colors.white,
//                     ),
//               ),
//             ),
//             // if (index == 1)
//             AnimatedOpacity(
//               duration: Duration(milliseconds: 400),
//               opacity: showStartCard ? 1 : 0,
//               child: Align(
//                 child: Padding(
//                   padding: const EdgeInsets.all(80.0).copyWith(bottom: 120),
//                   child: BottomTextInvite(
//                     getStartedPressed: widget.getStartedPressed,
//                   ),
//                 ),
//                 alignment: Alignment.bottomCenter,
//               ),
//             )
//           ],
//         ),
//         //key: ValueKey<int>(index),
//         height: double.maxFinite,
//         width: double.maxFinite,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/onboarding.jpg'),
//             fit: BoxFit.fill,
//           ),
//           //shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }
// }
//
// class BottomTextInvite extends StatelessWidget {
//   final VoidCallback getStartedPressed;
//   BottomTextInvite({
//     Key? key,
//     required this.getStartedPressed,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       // color: Theme.of(context).cardColor.withOpacity(0.7),
//       // shadowColor: Colors.black.withOpacity(0.3),
//       elevation: 10,
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 getStartedPressed();
//               },
//               child: Text('GET STARTED'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
