part of 'MoreWidgetsImports.dart';

class BuildMoreCard extends StatelessWidget {
  final Widget logo;
  final String title;
  final String subTitle;
  final void Function() onTab;

  const BuildMoreCard(
      {required this.logo,
      required this.title,
      required this.subTitle,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.offWhite,
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            logo,
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                    title: title,
                    color: MyColors.black,
                    size: 10,
                    fontWeight: FontWeight.bold),
                MyText(title: subTitle, color: MyColors.grey, size: 8),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
