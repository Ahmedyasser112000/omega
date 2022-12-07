part of 'LoginWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(RegisterRoute()),
        child: MyText(
            title: tr(context, "register"), color: MyColors.primary, size: 12),
      ),
    );
  }
}