import 'package:flutter/cupertino.dart';

class TouchLogo extends StatelessWidget {
  const TouchLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Image.asset('assets/logo.png'),
    );
  }
}
