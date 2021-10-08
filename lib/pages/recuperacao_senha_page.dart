import 'package:flutter/material.dart';
import 'package:touch/forms/recuperacao_senha_form.dart';
import 'package:touch/painters/login_painter.dart';

class RecuperacaoSenhaPage extends StatefulWidget {
  const RecuperacaoSenhaPage({Key? key}) : super(key: key);

  @override
  _RecuperacaoSenhaPageState createState() => _RecuperacaoSenhaPageState();
}

class _RecuperacaoSenhaPageState extends State<RecuperacaoSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: LoginPainter(),
          child: const RecuperacaoSenhaForm()
        )
    );
  }
}
