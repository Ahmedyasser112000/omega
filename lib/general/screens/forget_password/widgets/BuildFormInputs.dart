part of 'ForgetPasswordWidgetsImports.dart';

class BuildFormInputs extends StatelessWidget {
  final ForgerPasswordData forgerPasswordData;

  const BuildFormInputs({required this.forgerPasswordData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgerPasswordData.formKey,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        label: tr(context,"mail"),
        controller: forgerPasswordData.mail,
        action: TextInputAction.done,
        type: TextInputType.emailAddress,
        validate: (value) => value!.validateEmail(context),
        onSubmit: ()=> forgerPasswordData.onForgetPassword(context),
      ),
    );
  }
}
