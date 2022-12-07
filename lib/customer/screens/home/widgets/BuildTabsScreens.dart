part of 'HomeWidgetsImports.dart';

class BuildTabsScreens extends StatelessWidget {
  final HomeData homeData;

  const BuildTabsScreens({required this.homeData});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: homeData.controller,
      children: [
        MainPage(),
        Appointments(),
        AppNotifications(),
        More(),
      ],
    );
  }
}
