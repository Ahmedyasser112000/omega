part of 'LoginWidgetsImports.dart';

class BuildFormInputs extends StatelessWidget {
  final LoginData loginData;

  const BuildFormInputs({required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            label: tr(context, "mail"),
            controller: loginData.mail,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.next,
            suffixIcon: Icon(Icons.email,color: MyColors.greyWhite,size: 20,),
            type: TextInputType.emailAddress,
            validate: (value) => value!.validateEmail(context),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: loginData.showPassCubit,
            builder: (_, state) {
              return GenericTextField(
                fieldTypes: state.data == true
                    ? FieldTypes.normal
                    : FieldTypes.password,
                hint: tr(context, "password"),
                hintColor: Colors.white70,
                controller: loginData.password,
                validate: (value) => value!.validatePassword(context),
                type: TextInputType.text,
                action: TextInputAction.next,
                margin: const EdgeInsets.symmetric(vertical: 5),
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: IconButton( color: MyColors.greyWhite,iconSize: 20,
                  icon: Icon(
                    state.data ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    loginData.showPassCubit.onUpdateData(!state.data);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
