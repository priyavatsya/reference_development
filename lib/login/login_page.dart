import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reference_development/constants/constants.dart';
import '../navigation/bottom_navigatn/bottomnavigatn_.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../register/register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 900));
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: AppColors.PRIMARY_COLOR,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  padding: Padding_1,
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: Height1,
                            ),
                          ],
                        ),
                        Image(
                          image: AssetImage(
                            'images/login.png',
                          ),
                          fit: BoxFit.contain,
                        ),

                        SizedBox(
                          height: Height3,
                        ),

                        // Email(),
                        TextFormField(
                          key: Key('email'),
                          controller: emailController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.email),
                              onPressed: () {},
                            ),
                            filled: true,
                            fillColor: AppColors.PRIMARY_COLOR1,
                            hintText: 'Email',
                            enabled: true,
                          ),
                          validator: emailValue,
                          onSaved: (emailValue) {
                            emailController.text = emailValue!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        //Password(),
                        TextFormField(
                          key: Key('password'),
                          controller: passwordController,
                          obscureText: _isObscure3,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure3
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure3 = !_isObscure3;
                                  });
                                }),
                            filled: true,
                            fillColor: AppColors.PRIMARY_COLOR1,
                            hintText: 'Password',
                            enabled: true,
                          ),
                          validator: passwordValue,
                          onSaved: (passwordValue) {
                            passwordController.text = passwordValue!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),

                        SizedBox(height: Height3),
                        // SignIn(),
                        MaterialButton(
                          key: Key('Login_Button'),
                          shape: kRectangle,
                          elevation: 5.0,
                          height: Height2,
                          onPressed: () {
                            setState(() {
                              visible = true;
                            });
                            signIn(
                                emailController.text, passwordController.text);
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: FontSize1,
                            ),
                          ),
                          color: AppColors.PRIMARY_COLOR_LIGHT,
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        Text(
                          'Don\'t have an Account?',
                          style: TextStyle(
                            //color: AppColors.PRIMARY_COLOR,
                            fontSize: FontSize2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: Height1,
                        ),
                        MaterialButton(
                          key: Key('Register_Button'),
                          shape: kRectangle,
                          elevation: 5.0,
                          height: Height2,
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          color: AppColors.ACCENT_COLOR,
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                              color: AppColors.PRIMARY_COLOR,
                              fontSize: FontSize1,
                            ),
                          ),
                        ),
                        // ),
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

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Fluttertoast.showToast(
          msg: "Login Sucessful !!",
          toastLength: Toast.LENGTH_LONG,
          fontSize: FontSize1,
          backgroundColor: AppColors.PRIMARY_COLOR_DARK1,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomBar(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
