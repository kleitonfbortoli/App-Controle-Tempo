import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/fadingListView.dart';
import 'package:touch/components/initial_bar.dart';
import 'package:touch/components/initial_list_item.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';

class InitialForm extends StatelessWidget {


  InitialForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<InitialListItem> itens = [
      InitialListItem(
        action: (){
          print('asdasd');
        },
        icon: Icons.person,
        label: 'Perfil',
      ),
      InitialListItem(
        action: (){
          Navigator.pushNamed(context, 'atividades-page');
        },
        icon: Icons.event_note,
        label: 'Atividades',
      ),
      InitialListItem(
        action: (){
          print('asdasd');
        },
        icon: Icons.assessment,
        label: 'Estatísticas',
      ),
      InitialListItem(
        action: (){
          Navigator.pushNamed(context, 'configuration-page');
        },
        icon: Icons.settings,
        label: 'Configurações',
      ),
    ];

    List<Container> a = <Container>[];

    for(var i=0; i < itens.length; i++) {
      a.add(Container(
        margin: const EdgeInsets.only(
            bottom: 20.0
        ),
        child:itens[i]
      ));
    }
    return Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.20,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: TouchLogo(),
              )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *.95,
              height: MediaQuery.of(context).size.height *.725,
              child: FadingListView(
                children: ListView(
                  children: a,
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *.05,
                      right: MediaQuery.of(context).size.width *.05,
                      top: MediaQuery.of(context).size.width *.05,
                      bottom: MediaQuery.of(context).size.width *.05,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.075,
              child: InitialBar()
            )
          ],
        )
    );

  }
}
