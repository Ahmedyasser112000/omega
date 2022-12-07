part  of 'register_widgets_imports.dart';
class BuildRegisterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(
          title: tr(context, "welcome"),
          size: 15,
          color: MyColors.secondary,
        ),MyText(
          title: tr(context,"register"),
          size: 15,
          color: MyColors.secondary,
        ),
      ],
    );
  }
}
