import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/constants/app_colors.dart';

class ReturnArrow extends StatelessWidget {
  final VoidCallback action;
  const ReturnArrow(
      {
        Key? key,
        required this.action
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: const SizedBox(
          height: 50,
          child: Icon(
            Icons.arrow_back,
            color: initialBarItenColor,
            size: 40,
          ),
        )
    );
  }
}
