import 'package:flutter/material.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';

import '../config/size_config.dart';

class MyAnimatedContainer extends StatefulWidget {
  final Widget animatedTo;
  final Widget? child;

  const MyAnimatedContainer({Key? key, required this.animatedTo, this.child})
      : super(key: key);
  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      tween: Tween(
        begin: 0.0,
        end: SizeConfig.orientation == Orientation.portrait
            ? SizeConfig.screenHeight
            : SizeConfig.screenWidth,
      ),
      duration: Duration(milliseconds: 600),
      curve: Curves.easeOut,
      fps: 90,
      // child: widget.child ?? null,
      builder: (context, child, value) {
        return Container(height: value, width: value, child: widget.animatedTo);
      },
    );
  }
}
