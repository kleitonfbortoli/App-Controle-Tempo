import 'package:flutter/cupertino.dart';
import 'package:touch/clippers/clipper_login.dart';
import 'package:touch/constants/app_colors.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: FractionallySizedBox(
            heightFactor: 0.25,
            child: ClipPath(
                clipper: ClipperLogin(),
                child: Container(
                  margin: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: loginGradientColors,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      )
                  ),
                )
            )
        )
    );
  }
}
