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
        children: const <Widget> [
          Spacer(flex: 3),
          Icon(
            Icons.home_outlined,
            color: initialBarItenColor,
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.search_outlined,
            color: initialBarItenColor,
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.info_outline,
            color: initialBarItenColor,
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.notifications_none_outlined,
            color: initialBarItenColor,
            size: 30,
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
