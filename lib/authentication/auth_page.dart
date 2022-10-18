import 'package:flutter/material.dart';
import '../../login/login_page.dart';
import '../../register/register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  // void toggleScreen() {
  //   showLoginPage = !showLoginPage;
  // }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage();
    } else {
      return Register();
    }
  }
}
