part of 'register_widgets_imports.dart';

class BuildRegisterButton extends StatelessWidget {
  final RegisterData registerData;

  const BuildRegisterButton({Key? key, required this.registerData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: tr(context, "register"),
      onTap: () => registerData.setRegister(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(vertical: 10),
    );
  }
}
