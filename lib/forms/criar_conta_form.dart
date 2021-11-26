import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/link_label.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';
import 'package:touch/controlers/pessoa_control.dart';

class CriarContaForm extends StatelessWidget {
  final TextEditingController  nomeController = TextEditingController();
  final TextEditingController  emailController = TextEditingController();
  final TextEditingController  senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Center(
        child: Column(
          children: <Widget>[
            SizedBox(
                width: width,
                height: height * .25,
                child: Center (
                  child: SizedBox(
                    width: width,
                    height: height * .15,
                    child: const TouchLogo(),
                  ),
                )
            ),
            SizedBox(
                width: width,
                height: height * .13,
                child: Column(
                  children: [
                    PageTitle(
                        text: 'Cadastro',
                        color: Colors.black.withOpacity(0.5),
                        font_size: 40,
                        fontWeight: FontWeight.normal
                    ),
                    PageTitle(
                        text: 'Bem vindo ao touch.',
                        color: Colors.black.withOpacity(0.5),
                        font_size: 15,
                        fontWeight: FontWeight.normal
                    )
                  ],
                )
            ),
            SizedBox(
                width: width * .9,
                height: height * .1,
                child: Center(
                  child: InputField(
                      label: 'nome',
                      input_type: TextInputType.text,
                      controller: nomeController,
                  ),
                )
            ),
            SizedBox(
                width: width * .9,
                height: height * .1,
                child: Center(
                  child: InputField(
                      label: 'E-mail',
                      input_type: TextInputType.text,
                      controller: emailController,
                  ),
                )
            ),
            SizedBox(
                width: width * .9,
                height: height * .1,
                child: Center(
                  child: InputField(
                      label: 'Senha',
                      input_type: TextInputType.text,
                      controller: senhaController,
                  ),
                )
            ),
            // SizedBox(height: height * .04,),
            SizedBox(
                width: width * .8,
                height: height * .05,
                child: Center(
                  child: LinkLabel(
                    label: 'Esqueci minha senha >',
                    function: () => {
                      Navigator.pushNamed(context, 'reset-pass')
                    },
                    color: Colors.blue,
                    size: 15
                  )
                )
            ),
            SizedBox(
                width: width * .8,
                height: height * .05,
                child: Center(
                  child: LinkLabel(
                    label: '< Voltar para o login',
                    function: () => {
                      Navigator.pushNamed(context, 'login')
                    },
                    color: Colors.blue,
                    size: 15
                  )
                )
            ),
            SizedBox(height: height * .10,),
            SizedBox(
                width: width * .7,
                height: height * .07,
                child: ButtonPrimary(
                  label: 'Entrar',
                  showBorder: false,
                  callback: (){
                    print(nomeController.text);
                    print(emailController.text);
                    print( senhaController.text);
                    PessoaControl.cadastrar(nomeController.text, emailController.text, senhaController.text);
                  },
                )
            ),
          ],
        )
    );
  }
}
