part of 'LoginWidgetsImports.dart';

class OrLoginWith extends StatelessWidget {
  const OrLoginWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MyText(
          title: "Or Login with",
          color: MyColors.greyWhite,
          size: 12,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: MyColors.greyWhite)),
                  child: Image.asset(Res.facebook)),
              Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: MyColors.greyWhite)),
                  child: Image.asset(Res.google)),            ],
          ),
        ),
      ],
    );
  }
}
