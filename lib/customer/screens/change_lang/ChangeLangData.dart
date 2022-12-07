part of 'ChangeLangImports.dart';

class ChangeLangData {
  final GlobalKey<CustomButtonState> btnKey =
      new GlobalKey<CustomButtonState>();
  final GenericBloc<int> changeLangBloc = GenericBloc(1);

  void changeLang(BuildContext context) async {
    late String lang;
    if (changeLangBloc.state.data == 1) {
      lang = "ar";
    } else if (changeLangBloc.state.data == 2) {
      lang = "en";
    } else {
      return;
    }
    DioUtils.lang = lang;
    btnKey.currentState!.animateForward();
    // dynamic result = await CustomerRepository(context).changeLang();
    btnKey.currentState!.animateReverse();
      CustomToast.showSimpleToast(
        msg: tr(context, "langChangedSuccessfully"),
      );
      var user = context.read<UserCubit>().state.model;
      user.lang = lang;
      context.read<UserCubit>().onUpdateUserData(user);
      Utils.saveUserData(user);
      Utils.changeLanguage(lang, context);
      AutoRouter.of(context).pop();
  }
}