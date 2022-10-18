// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// import '../../constants/constants.dart';
//
// class Email extends StatefulWidget {
//   const Email({Key? key}) : super(key: key);
//
//   @override
//   State<Email> createState() => _EmailState();
// }
//
// class _EmailState extends State<Email> {
//   bool _isObscure3 = true;
//   bool visible = false;
//   final _formkey = GlobalKey<FormState>();
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         SizedBox(height: Height1),
//         Container(
//           alignment: Alignment.centerLeft,
//           child: TextFormField(
//             controller: emailController,
//             decoration: InputDecoration(
//               suffixIcon: IconButton(
//                 icon: Icon(Icons.email),
//                 onPressed: () {},
//               ),
//               filled: true,
//               fillColor: AppColors.PRIMARY_COLOR1,
//               hintText: 'Email',
//               enabled: true,
//               // contentPadding:
//               //     const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
//               // focusedBorder: OutlineInputBorder(
//               //   borderSide: new BorderSide(color: AppColors.PRIMARY_COLOR2),
//               //   borderRadius: new BorderRadius.circular(10),
//               // ),
//               // enabledBorder: UnderlineInputBorder(
//               //   borderSide: new BorderSide(color: AppColors.PRIMARY_COLOR2),
//               //   borderRadius: new BorderRadius.circular(10),
//               // ),
//             ),
//             validator: kValue,
//             onSaved: (kValue) {
//               emailController.text = kValue!;
//             },
//             keyboardType: TextInputType.emailAddress,
//           ),
//         ),
//       ],
//     );
//   }
// }
