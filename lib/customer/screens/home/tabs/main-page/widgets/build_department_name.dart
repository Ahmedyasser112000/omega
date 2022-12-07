part of 'MainPageWidgetsImports.dart';


class BuildDepartmentName extends StatelessWidget {
  final String departmentName;
  final bool showFilter;
  const BuildDepartmentName({Key? key,required this.departmentName,required this.showFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          InkWell(
            onTap: ()=> AutoRouter.of(context).push(SeeAllRoute(title: departmentName, showFilter: showFilter)),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios,color: MyColors.primary,),
                MyText(title: "See all", color: MyColors.primary, size: 11),
              ],
            ),
          ),
          MyText(title: "$departmentName", color: MyColors.black, size: 12),

        ],
      ),
    );
  }
}
