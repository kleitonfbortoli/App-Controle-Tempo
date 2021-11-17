import 'package:flutter/material.dart';
import 'package:touch/forms/subtarefa_form.dart';
import 'package:touch/painters/white_painter.dart';

class SubtarefaPage extends StatefulWidget {
  const SubtarefaPage({Key? key}) : super(key: key);

  @override
  _SubtarefaPageState createState() => _SubtarefaPageState();
}

class _SubtarefaPageState extends State<SubtarefaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: WhitePainter(),
          child: SubtarefaForm()
      )
    );
  }
}
