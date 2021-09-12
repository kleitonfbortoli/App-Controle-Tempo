
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:touch/backgrounds/login_background.dart';
import 'package:touch/forms/recuperacao_senha_form.dart';

class RecuperacaoSenhaPage extends StatefulWidget {
  const RecuperacaoSenhaPage({Key? key}) : super(key: key);

  @override
  _RecuperacaoSenhaPageState createState() => _RecuperacaoSenhaPageState();
}

class _RecuperacaoSenhaPageState extends State<RecuperacaoSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: const <Widget>[
            LoginBackground(),
            RecuperacaoSenhaForm()
          ],
      )
    );
  }
}
