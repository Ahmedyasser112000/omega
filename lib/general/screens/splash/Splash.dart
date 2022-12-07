part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const Splash({required this.navigatorKey});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkingData();
    super.initState();
  }


  _checkingData() async {
    if (!kIsWeb) {
      GlobalNotification.instance.setupNotification(context);
    }
    // Utils.manipulateSplashData(context);
    Utils.initDio(lang: "ar");
    Utils.initCustomWidgets(language: "ar");
    AutoRouter.of(context).push(WelcomePageRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        color: MyColors.primary,
        child: Center(
          child: AnimationContainer(
              index: 0,
              vertical: true,
              duration: Duration(milliseconds: 1500),
              distance: MediaQuery.of(context).size.height * .3,
              child: Hero(
                tag: Res.logoOmega,
                child: Image.asset(
                  Res.logoOmega,
                  width: 200,
                  height: 150,
                ),
              )),
        ),
      ),
    );
  }
}
