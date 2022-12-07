part  of 'register_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: MyText(
              title:tr(context,"haveAccount"),
              size: 13,
              alien: TextAlign.center,
              color: MyColors.grey,
            ),
          ),
          InkWell(
              onTap: ()=> AutoRouter.of(context).push(LoginRoute()),
              child: MyText(title: tr(context,"login"), color: MyColors.secondary, size: 13,)),
        ],
      ),
    );
  }
}
