import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkLabel extends StatelessWidget {
  final String label;
  final VoidCallback function;
  final Color color;
  final double size;
  const LinkLabel(
      {
        Key? key,
        required this.label,
        required this.function,
        required this.color,
        required this.size,
      }
      ) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Center(
        child: InkWell(
            child: Text(
              label,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: color,
                fontSize: size
              ),
            ),
            onTap: function
        ),
      );
    }
  }