part of 'ChangeLangImports.dart';

class BuildLangButton extends StatelessWidget {
  final ChangeLangData changeLangData;

  const BuildLangButton({Key? key, required this.changeLangData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.8,
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: LoadingButton(
          btnKey: changeLangData.btnKey,
          title: tr(context, "confirm"),
          onTap: () =>changeLangData.changeLang(context),
          color: MyColors.primary,
          textColor: MyColors.white,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
