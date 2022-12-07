part of 'ActiveAccountImports.dart';

class ActiveAccountData {

  GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController code = new TextEditingController();


  void onActiveAccount(BuildContext context, String userId) async {
    if (formKey.currentState!.validate()) {
      CustomToast.showSimpleToast(msg: "تم التفعيل بنجاح");
      // AutoRouter.of(context).push(HomeRoute());
      // btnKey.currentState.animateForward();
      // var result =  await GeneralRepository(context).sendCode(code.text, userId);
      // btnKey.currentState.animateReverse();
      // if(result){
      //   ExtendedNavigator.of(context).popUntilPath(Routes.login);
      // }
    }
  }

  void onResendCode(BuildContext context, String userId) async {
    CustomToast.showSimpleToast(msg: "تم اعادة ارسال الكود بنجاح");
    // await GeneralRepository(context).resendCode(userId);
  }
}
