part of 'ChangeLangImports.dart';

class BuildLangTextInput extends StatelessWidget {

  const BuildLangTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FadeAnimation(0.6,
      Container(
        margin: const EdgeInsets.only(
          bottom: 40,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(fontFamily: GoogleFonts.almarai().fontFamily,
              title: tr(context, "selectLang"),
              size: 15,
              color: MyColors.black,
              fontWeight: FontWeight.bold,
            ),
            MyText(fontFamily: GoogleFonts.almarai().fontFamily,
              title: tr(context, "langCondition"),
              size: 12,
              color: MyColors.grey,

            ),
          ],
        ),
      ),
    );
  }
}
