part of 'LoginImports.dart';

class LoginData {
  GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController password = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final GenericBloc<bool> showPassCubit = GenericBloc(false);


  void userLogin(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      // String mailEn = Utils.convertDigitsToLatin(mail.text);
      // String passEn = Utils.convertDigitsToLatin(password.text);
      // await GeneralRepository(context).setUserLogin(mailEn, passEn);

      AutoRouter.of(context).push(HomeRoute());
      btnKey.currentState!.animateReverse();
    }
  }
}
