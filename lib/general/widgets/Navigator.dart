import 'package:animations/animations.dart';
import 'package:base_flutter/general/widgets/BuildGeneralButtomSheet.dart';
import 'package:flutter/material.dart';

class Nav {
  static navigateToButtonSheet(BuildContext context,
      TickerProviderStateMixin tickerProviderStateMixin, Widget widget,
      {double? sheetHeight}) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      transitionAnimationController: AnimationController(
        vsync: tickerProviderStateMixin,
        duration: Duration(milliseconds: 800),
      ),
      context: context,
      builder: (context) => GeneralButtonSheet(
          height: sheetHeight ?? MediaQuery.of(context).size.height / 1.5,
          body: widget),
    );
  }

  static navigateToDialog(BuildContext context,
      TickerProviderStateMixin tickerProviderStateMixin, Widget widget) {
    showModal(
        configuration: const FadeScaleTransitionConfiguration(
          transitionDuration: Duration(
            milliseconds: 700,
          ),
        ),
        context: context,
        builder: (context) => widget);
  }
}
