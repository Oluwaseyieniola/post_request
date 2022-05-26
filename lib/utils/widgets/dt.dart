import 'package:flutter/material.dart';

import '../styles/colors_utils.dart';

class Dt extends StatelessWidget {
  const Dt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Image.asset(
        'assets/images/olori.png',
        semanticLabel: 'Splash',
        width: 12,
        height: 10,
        color: white,
        colorBlendMode: BlendMode.colorBurn,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
