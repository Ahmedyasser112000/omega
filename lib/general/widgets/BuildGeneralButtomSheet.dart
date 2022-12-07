import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';

class GeneralButtonSheet extends StatelessWidget {
  final Widget body;

  final double? height;

  const GeneralButtonSheet({Key? key, required this.body, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(spreadRadius: 1.0, color: MyColors.primary),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      width: double.infinity,
      child: body,
    );
  }
}
