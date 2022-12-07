part of 'HomeImports.dart';
class HomeData {
  final TextEditingController search = new TextEditingController();
  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }

  late TabController controller;
  void onChangePage(BuildContext context,int index) {
    controller.animateTo(index,
        duration: Duration(milliseconds: 500), curve: Curves.bounceOut);
  }
}