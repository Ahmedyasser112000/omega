part of 'HomeWidgetsImports.dart';

class BuildBottomTabBar extends StatelessWidget {
  final HomeData data;

  const BuildBottomTabBar({required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Platform.isIOS ? 80 : 60,
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(color: MyColors.greyWhite, blurRadius: 2, spreadRadius: 1)
        ],
      ),
      alignment: Alignment.topCenter,
      child: TabBar(
        onTap: (index) => data.onChangePage(context, index),
        controller: data.controller,
        physics: NeverScrollableScrollPhysics(),
        unselectedLabelColor: MyColors.blackOpacity,
        labelColor: MyColors.primary,
        tabs: <Widget>[
          BuildTabItem(
            icon: Res.home,
          ),
          BuildTabItem(
            icon: Res.history,
          ),
          BuildTabItem(
            icon: Res.notifications,
          ),
          BuildTabItem(
            icon: Res.profile,
          ),

        ],
      ),
    );
  }
}
