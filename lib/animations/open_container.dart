import 'package:animations/animations.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';

class OpenContainerAnimation extends StatefulWidget {
  final Widget child;

  final Widget navigateTo;

  final void Function(Object?)? onClosed;

  const OpenContainerAnimation(
      {Key? key, required this.child, required this.navigateTo, this.onClosed})
      : super(key: key);

  @override
  State<OpenContainerAnimation> createState() => _OpenContainerAnimationState();
}

class _OpenContainerAnimationState extends State<OpenContainerAnimation> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      onClosed: widget.onClosed,
      closedElevation: 0.0,
      openElevation: 0.0,
      closedColor: Colors.transparent,
      openColor: MyColors.white,
      middleColor: Colors.transparent,
      transitionType: ContainerTransitionType.fadeThrough,
      transitionDuration: Duration(milliseconds: 700),
      closedBuilder: (BuildContext context, void Function() action) {
        return widget.child;
      },
      openBuilder:
          (BuildContext context, void Function({Object? returnValue}) action) {
        return widget.navigateTo;
      },
    );
  }
}
