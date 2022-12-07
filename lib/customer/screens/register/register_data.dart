part of 'register_imports.dart';


class RegisterData{
  // keys
  GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();
  final GlobalKey<DropdownSearchState> countryKey = new GlobalKey();

  // Text Form Field
  final TextEditingController password = new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController confirmPass = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController location = new TextEditingController();

  // Blocs
  final GenericBloc<bool> showPassCubit = GenericBloc(true);
  final GenericBloc<bool> confirmShowPassCubit = GenericBloc(true);
  final LocationCubit locationCubit = LocationCubit();

  // objects

  // Functions
  onLocationClick(BuildContext context) async {
    LoadingDialog.showLoadingDialog();
    var _loc = await Utils.getCurrentLocation();
    locationCubit.onLocationUpdated(LocationModel(
      lat: _loc?.latitude ?? 24.774265,
      lng: _loc?.longitude ?? 46.738586,
      address: "",
    ));
    EasyLoading.dismiss();
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locationCubit,
          child: LocationAddress(),
        ),
      ),
    );
  }

  setRegister(BuildContext context) async {
    // FirebaseMessaging messaging = FirebaseMessaging.instance;

    if (formKey.currentState!.validate()) {
      if (phone.text.length < 9) {
        CustomToast.showSimpleToast(msg: tr(context, "checkPhoneNumber"));
        return;
      }
      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email.text)) {
        CustomToast.showSimpleToast(msg: tr(context, "checkEmail"));
        return;
      }
      CustomToast.showSimpleToast(msg: "تم تسجيل حساب جديد بنجاح");
      AutoRouter.of(context).push(ActiveAccountRoute(userId: ''));

      btnKey.currentState?.animateReverse();
    }
  }
}