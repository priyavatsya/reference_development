// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../../constants/constants.dart';
//
// class Password extends StatefulWidget {
//   const Password({Key? key}) : super(key: key);
//
//   @override
//   State<Password> createState() => _PasswordState();
// }
//
// class _PasswordState extends State<Password> {
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
//             controller: passwordController,
//             obscureText: _isObscure3,
//             decoration: InputDecoration(
//               suffixIcon: IconButton(
//                   icon: Icon(
//                       _isObscure3 ? Icons.visibility : Icons.visibility_off),
//                   onPressed: () {
//                     setState(() {
//                       _isObscure3 = !_isObscure3;
//                     });
//                   }),
//               filled: true,
//               fillColor: AppColors.PRIMARY_COLOR1,
//               hintText: 'Password',
//               enabled: true,
//               // contentPadding: const EdgeInsets.only(
//               //     left: 14.0, bottom: 8.0, top: 15.0),
//               // focusedBorder: OutlineInputBorder(
//               //   borderSide: new BorderSide(
//               //       color: AppColors.PRIMARY_COLOR2),
//               //   borderRadius: new BorderRadius.circular(10),
//               // ),
//               // enabledBorder: UnderlineInputBorder(
//               //   borderSide: new BorderSide(
//               //       color: AppColors.PRIMARY_COLOR2),
//               //   borderRadius: new BorderRadius.circular(10),
//               // ),
//             ),
//             validator: (value) {
//               RegExp regex = new RegExp(r'^.{6,}$');
//               if (value!.isEmpty) {
//                 return "Password cannot be empty";
//               }
//               if (!regex.hasMatch(value)) {
//                 return ("please enter valid password min. 6 character");
//               } else {
//                 return null;
//               }
//             },
//             onSaved: (kValue) {
//               passwordController.text = kValue!;
//             },
//             keyboardType: TextInputType.emailAddress,
//           ),
//         ),
//       ],
//     );
//   }
// }
