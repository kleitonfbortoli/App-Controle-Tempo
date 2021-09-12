import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';

class CriarContaForm extends StatelessWidget {
  const CriarContaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          const TouchLogo(),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    bottom: 50.0
                ),
                child: const PageTitle(
                    text: 'Criar uma conta',
                    color: Colors.black
                )
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: InputField(label: 'Nome', input_type: TextInputType.text),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: InputField(label: 'E-mail', input_type: TextInputType.text),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: InputField(label: 'Senha', input_type: TextInputType.text),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 50.0
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: const ButtonPrimary(label: 'Enviar')
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}