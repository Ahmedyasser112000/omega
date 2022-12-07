part of 'MoreImports.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> with TickerProviderStateMixin {
  final MoreData moreData = MoreData();
  @override
  Widget build(BuildContext context) {
    var auth = context.watch<AuthCubit>().state.authorized;
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(
        title: tr(context, "more"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          auth
              ? BuildMoreCard(
            logo: Image.asset(
              Res.profile,
              scale: 4,
            ),
            title: tr(context, "myAccount"),
            subTitle: tr(context, "seeAccount"),
            // onTab: () => AutoRouter.of(context).push(MyAccountRoute()),
            onTab: () {},
          )
              : Container(),
          auth
              ? BuildMoreCard(
                  logo: Image.asset(
                    Res.lang,
                    scale: 3.3,
                  ),
                  title: tr(context, "lang"),
                  subTitle: tr(context, "controlLang"),
                  onTab: () {
                    // Nav.navigateToButtonSheet(context, this, ChangeLanguage());
                  },
                  // onTab: () => AutoRouter.of(context).push(LanguageRoute()),
                )
              : Container(),

          BuildMoreCard(
            logo: Image.asset(
              Res.sharrot,
              scale: 4,
            ),
            title: tr(context, "terms"),
            subTitle: tr(context, "seeTerms"),
            onTab: () => AutoRouter.of(context).push(TermsRoute()),
          ),
          BuildMoreCard(
            logo: Image.asset(
              Res.about,
              scale: 1.2,
            ),
            title: tr(context, "about"),
            subTitle: tr(context, "seeAbout"),
            onTab: () => AutoRouter.of(context).push(AboutRoute()),
          ),
          BuildMoreCard(
              logo: Image.asset(
                Res.phone,
                scale: 4,
              ),
              title: tr(context, "contactUs"),
              subTitle: tr(context, "help"),
              onTab: () => AutoRouter.of(context).push(ContactUsRoute())),
          auth
              ? BuildMoreCard(
                  logo: Image.asset(
                    Res.logout,
                    scale: 4,
                  ),
                  title: tr(context, "logout"),
                  subTitle: tr(context, "youCanLogOut"),
                  onTab: () => moreData.logOut(context),
                )
              : BuildMoreCard(
                  logo: Image.asset(
                    Res.logout,
                    scale: 4,
                  ),
                  title: tr(context, "login"),
                  subTitle: tr(context, "youCanLogOut"),
                  onTab: () => AutoRouter.of(context).push(LoginRoute()),
                )
        ],
      ),
    );
  }
}
