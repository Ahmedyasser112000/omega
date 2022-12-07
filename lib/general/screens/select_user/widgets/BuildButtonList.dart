part of 'SelectUserWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          width: 200,
          title: "User",
          // title: tr(context,"customer"),
          onTap: () => AutoRouter.of(context).push(LoginRoute()),
          margin: const EdgeInsets.symmetric(vertical: 15),
          color: MyColors.primary,
        ),
        DefaultButton(
          // title:tr(context,"agency"),
          title:"Medical Staff",
          width: 200,
          onTap: () => AutoRouter.of(context).push(LoginRoute()),
          margin: const EdgeInsets.only(bottom: 15),
          color: MyColors.secondary,
          borderColor: MyColors.secondary,
          textColor: MyColors.white,
        ),
        DefaultButton(
          // title:tr(context,"agency"),
          title:"Skip",
          width: 200,
          onTap: () => AutoRouter.of(context).push(LoginRoute()),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          color: MyColors.white,
          borderColor: MyColors.primary,
          textColor: MyColors.primary,
        ),
      ],
    );
  }
}
