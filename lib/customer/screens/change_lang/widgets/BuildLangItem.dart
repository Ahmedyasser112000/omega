part of 'ChangeLangImports.dart';

class BuildLangItem extends StatelessWidget {
  final ChangeLangData changeLangData;
  final bool isChecked;
  final String title;
  final String flagImg;
  final Color borderColor;
  final Color fillColor;
  final GestureTapCallback onTap;
  const BuildLangItem(
      {Key? key,
      required this.title,
      required this.flagImg,
      required this.onTap,
      required this.changeLangData,
      required this.borderColor,
      required this.fillColor,
      required this.isChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.7,
      InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: fillColor,
              boxShadow: [
                BoxShadow(color: borderColor, spreadRadius: .5, blurRadius: .5)
              ]),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: Row(
            children: [
              Image.asset(
                flagImg,
                scale: 2.7,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: MyText(
                  fontFamily: GoogleFonts.almarai().fontFamily,
                  title: title,
                  size: 13,
                  color: MyColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Visibility(
                  visible: isChecked,
                  child: Image.asset(
                    Res.hands,
                    scale: 3,
                    color: MyColors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
