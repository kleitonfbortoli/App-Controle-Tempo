import 'package:flutter/material.dart';
import 'package:touch/forms/criar_conta_form.dart';
import 'package:touch/painters/login_painter.dart';

class CriarContaPage extends StatefulWidget {
  const CriarContaPage({Key? key}) : super(key: key);

  @override
  _CriarContaPage createState() => _CriarContaPage();
}

class _CriarContaPage extends State<CriarContaPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
        painter: LoginPainter(),
        child: CriarContaForm()
      )
    );
  }
}
