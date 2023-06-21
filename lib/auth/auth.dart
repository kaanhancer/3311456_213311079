
import 'package:flutter/material.dart';

import '../login_page.dart';
import '../register.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toogleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        showRegisterPage: toogleScreens,
      );
    } else {
      return Register(
        showLoginPage: toogleScreens,
      );
    }
  }
}