part of 'LoginWidgetsImports.dart';

class BuildText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyText(
        title: tr(context,"login"),
        size: 16,
        color: MyColors.primary,
      ),
    );
  }
}
