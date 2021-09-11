
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:touch/backgrounds/login_background.dart';
import 'package:touch/forms/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: const <Widget>[
            LoginBackground(),
            LoginForm()
          ],
      )
    );
  }
}
