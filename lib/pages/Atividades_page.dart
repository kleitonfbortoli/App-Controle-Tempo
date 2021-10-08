import 'package:flutter/material.dart';
import 'package:touch/forms/atividades_form.dart';
import 'package:touch/painters/pages_painter.dart';

class AtividadesPage extends StatefulWidget {
  const AtividadesPage({Key? key}) : super(key: key);

  @override
  _AtividadesPageState createState() => _AtividadesPageState();
}

class _AtividadesPageState extends State<AtividadesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: PagePainter(),
          child: AtividadesForm()
        )
    );
  }
}
