import 'package:flutter/cupertino.dart';

class PageTitle extends StatelessWidget {
  final String text;
  final Color color;
  final double font_size;
  final FontWeight fontWeight;

  const PageTitle(
      {
        Key? key,
        required this.text,
        required this.color,
        required this.font_size,
        this.fontWeight = FontWeight.bold
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: RichText(
            text: TextSpan(
              text: text,
              style: TextStyle(
                  color: color,
                  fontSize: font_size,
                  fontWeight:  fontWeight
              ),
            )
        )
    );
  }
}
