import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/page_title.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const PageTitle(text: 'Login', color: Colors.black),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: InputField(label: 'CPF', input_type: TextInputType.number),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: InputField(label: 'Senha', input_type: TextInputType.text),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: const ButtonPrimary(label: 'Entrar')
            ),
          ),
        ],
      )
    );
  }
}
