import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/fadingListView.dart';
import 'package:touch/components/initial_bar.dart';
import 'package:touch/components/initial_list_item.dart';
import 'package:touch/components/logo.dart';

class AtividadesForm extends StatelessWidget {
  List<InitialListItem> itens = [
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    ),
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    ),
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    ),
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    ),
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    ),
    InitialListItem(
      action: (){
        print('asdasd');
      },
      icon: Icons.house_outlined,
      label: 'Entrar',
    )
  ];

  AtividadesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              height: MediaQuery.of(context).size.height *.3,
              child: TouchLogo(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *.95,
              height: MediaQuery.of(context).size.height *.625,
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
            // Container(
            //   height: MediaQuery.of(context).size.height *.025,
            // ),
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
