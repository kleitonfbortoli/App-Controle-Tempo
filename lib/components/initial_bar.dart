import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/constants/app_colors.dart';

class InitialBar extends StatelessWidget {
  const InitialBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: initialBarColor,
      child: Row(
        children: <Widget> [
          const Spacer(flex: 3),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, 'initial-page');
            },
            icon: const Icon(
                Icons.home_outlined,
                color: initialBarItenColor,
                size: 30,
              ),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.search_outlined,
              color: initialBarItenColor,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.info_outline,
              color: initialBarItenColor,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: initialBarItenColor,
              size: 30,
            ),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
