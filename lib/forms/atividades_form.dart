import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/activity_button.dart';
import 'package:touch/components/page_title.dart';
import 'package:touch/components/return_arrow.dart';
import 'package:touch/constants/app_colors.dart';
import 'package:touch/objects/atividade.dart';

class AtividadesForm extends StatelessWidget {

  List<Atividade> itens = [
    Atividade('Trabalho padrão', '0'),
    Atividade('Atividades extras', '0'),
    Atividade('Estudos', '0'),
    Atividade('Pesquisas extra curriculares', '0'),
    Atividade('Pesquisas extra curriculares', '0'),

  ];

  AtividadesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Container> container_list = <Container>[];

    for (var i = 0; i < itens.length; i++) {
      container_list.add(Container(
          margin: const EdgeInsets.only(
              bottom: 20.0
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 3),
            child: ActivityButton(
              action: () {
                print('sasasa');
              },
              label: itens[i].descricao,
            ),
          )
      ));
    }

    return Scaffold(
        body: Stack(
            children: <Widget>[
            SingleChildScrollView(
                child: Column(children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 100, 0, 60),
                            child: PageTitle(
                              color: titlePageColorBlue,
                              text: "Atividades",
                              font_size: 36,
                            )
                        ),
                      )
                    ],
                  ),
                  Column(
                      children: container_list
                  )
                ])
            ),

            new Positioned(
              top: 20.0,
              left: 20.0,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: ReturnArrow(action: (){
                        Navigator.pushNamed(context, 'initial-page');
                      }),
                    ),
              ),
            )

          ]
      )
    );

  }
}
