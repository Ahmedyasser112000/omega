 part of 'HomeImports.dart';

class Home extends StatefulWidget {
  // final int index;
  //
  // const Home({Key? key, required this.index}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final HomeData homeData = HomeData();
  @override
  void initState() {
    homeData.controller = new TabController(length: 4, vsync: this);
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        if (message.data != {}) {
          GlobalNotification.flutterNotificationClick(message.data.toString());
        } else {
          GlobalNotification.flutterNotificationClick("${message.notification}");
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: homeData.onBackPressed,
      child: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          body: BuildTabsScreens(
            homeData: homeData,
          ),
          bottomNavigationBar: BuildBottomTabBar(
            data: homeData,
          ),
        ),
      ),
    );
  }
}
