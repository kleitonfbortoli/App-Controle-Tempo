
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:touch/backgrounds/login_background.dart';
import 'package:touch/forms/criar_conta_form.dart';

class CriarContaPage extends StatefulWidget {
  const CriarContaPage({Key? key}) : super(key: key);

  @override
  _CriarContaPage createState() => _CriarContaPage();
}

class _CriarContaPage extends State<CriarContaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: const <Widget>[
            LoginBackground(),
            CriarContaForm()
          ],
      )
    );
  }
}
