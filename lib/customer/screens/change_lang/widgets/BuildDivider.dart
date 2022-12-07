part of 'ChangeLangImports.dart';


class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.grey, borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width / 5,
      height: 3,
    );
  }
}
