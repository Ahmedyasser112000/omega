part of 'AppointmentsWidgetsImports.dart';
class BuildTabsItem extends StatelessWidget {
final String title;
final int index;
final int current;

  const BuildTabsItem({required this.title,required this.index,required this.current});
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        // padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(3),
        height: 40,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: index == current ? MyColors.primary : Colors.transparent),
        child: MyText(
          title: title,
          size: 12,
          color: index == current ? MyColors.white : MyColors.black,
        ),
      ),
    );
  }
}
