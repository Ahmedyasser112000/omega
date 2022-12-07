import 'package:flutter/material.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget> actions;
  final double? size ;
  final bool? isCenter;

  DefaultAppBar({
    required this.title,
    this.actions = const [],
    this.leading,
    this.isCenter,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: MyText(
        title: "$title",
        size: 14,
        color: MyColors.black,
        fontWeight: FontWeight.w600,
      ),
      centerTitle: isCenter ?? false,
      backgroundColor: MyColors.white,
      elevation: 0,
      leading: leading ??
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: MyColors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size??65);
}
