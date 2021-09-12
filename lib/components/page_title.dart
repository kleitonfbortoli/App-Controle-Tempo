import 'package:flutter/cupertino.dart';

class PageTitle extends StatelessWidget {
  final String text;
  final Color color;

  const PageTitle({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: RichText(
            text: TextSpan(
              text: text,
              style: TextStyle(
                  color: color,
                  fontSize: 40,
                  fontFamily: 'Montserrat'
              ),
            )
        )
    );
  }
}
