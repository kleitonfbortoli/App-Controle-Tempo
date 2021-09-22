
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:touch/backgrounds/login_background.dart';
import 'package:touch/forms/login_form.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
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
