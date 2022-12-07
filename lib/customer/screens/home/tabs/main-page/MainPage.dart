part of 'MainPageImports.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final MainPageData mainPageData = MainPageData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: DefaultAppBar(
        title: '',
        leading: IconButton(
          icon: Icon(
            Icons.filter_list_rounded,
            color: MyColors.primary,
          ),
          onPressed: () {
            Nav.navigateToButtonSheet(context, this, Filter(),
                sheetHeight: 250);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Column(
                  children: [
                    MyText(
                      title: "Ahmed",
                      color: MyColors.black,
                      size: 11,
                      fontWeight: FontWeight.bold,
                    ),
                    MyText(
                      title: "Ahmed",
                      color: MyColors.blackOpacity,
                      size: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset(Res.profile),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          BuildSearch(),
          BuildDepartmentName(
            departmentName: "Features",
            showFilter: false,
          ),
          BuildDepartmentItem(),
          BuildDepartmentName(
              departmentName: "Nearby Doctors", showFilter: true),
          BuildDepartmentItem(),
          BuildDepartmentName(
              departmentName: "Nearby Nurses", showFilter: true),
          BuildDepartmentItem(),
        ],
      ),
    );
  }
}
