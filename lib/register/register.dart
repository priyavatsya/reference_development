import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reference_development/constants/constants.dart';
import '../login/login_page.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  _RegisterState();

  bool showProgress = false;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  CollectionReference ref = FirebaseFirestore.instance.collection('users');
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  // final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  // final TextEditingController mobile = new TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 900));
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Container(
                  padding: Padding_1,
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: Height1),
                        Image(
                          image: AssetImage(
                            'images/register.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.PRIMARY_COLOR_4,
                            fontSize: FontSize3,
                          ),
                        ),
                        SizedBox(
                          height: Height2,
                        ),
                        TextFormField(
                          key: Key('email'),
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.PRIMARY_COLOR1,
                            hintText: 'Email',
                            enabled: true,
                          ),
                          validator: emailValue,
                          onChanged: (kValue) {},
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        TextFormField(
                          key: Key('password'),
                          obscureText: _isObscure,
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            filled: true,
                            fillColor: AppColors.PRIMARY_COLOR1,
                            hintText: 'Password',
                            enabled: true,
                          ),
                          validator: passwordValue,
                          onChanged: (KValue) {},
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        TextFormField(
                          key: Key('Confirm_password'),
                          obscureText: _isObscure2,
                          controller: confirmpassController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure2
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                }),
                            filled: true,
                            fillColor: AppColors.PRIMARY_COLOR1,
                            hintText: 'Confirm Password',
                            enabled: true,
                          ),
                          validator: (value) {
                            if (confirmpassController.text !=
                                passwordController.text) {
                              return "Password did not match";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MaterialButton(
                              key: Key('Register_Button'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              elevation: 5.0,
                              height: Height2,
                              onPressed: () {
                                setState(() {
                                  showProgress = true;
                                });
                                signUp(
                                  emailController.text,
                                  passwordController.text,
                                );
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: FontSize1,
                                ),
                              ),
                              color: AppColors.PRIMARY_COLOR2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  signUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: email,
              password: password,
            )
            .whenComplete(() => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  )
                });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    //  CircularProgressIndicator();
  }
}
