import 'package:flutter/material.dart';
import 'package:base_flutter/res.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Image(
        height: 100,
        width: 120,
        image: AssetImage(Res.logoOmega),
        fit: BoxFit.contain,
      ),
    );
  }
}
