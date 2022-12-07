import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/widgets/HeaderLogo.dart';
import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  final Widget child;

  AuthScaffold({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HeaderLogo(),
          Container(
            height: MediaQuery.of(context).size.height/1.2,
          decoration:BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
          ),child: child),
        ],
      ),
    );
  }
}
