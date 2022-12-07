part  of 'register_widgets_imports.dart';

class BuildRegisterInputs extends StatelessWidget {
final RegisterData registerData;

  const BuildRegisterInputs({Key? key,required this.registerData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            label: tr(context, "name"),
            controller: registerData.name,
            margin: const EdgeInsets.symmetric(vertical: 5),
            action: TextInputAction.next,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            label: tr(context, "phone"),
            controller: registerData.phone,
            margin: const EdgeInsets.symmetric(vertical: 5),
            action: TextInputAction.next,
            type: TextInputType.phone,
            validate: (value) => value!.validatePhone(context),
          ),
            GenericTextField(
            fieldTypes: FieldTypes.normal,
            label: tr(context, "mail"),
            controller: registerData.email,
            margin: const EdgeInsets.symmetric(vertical: 5),
            action: TextInputAction.next,
            type: TextInputType.emailAddress,
            validate: (value) => value!.validateEmail(context),
          ),
          BlocConsumer<LocationCubit, LocationState>(
            bloc: registerData.locationCubit,
            listener: (context, state) {
              registerData.location.text = state.model?.address ?? "";
            },
            builder: (context, state) {
              return GenericTextField(
                fieldTypes: FieldTypes.clickable,
                hint: tr(context, "locationOnMap"),
                controller: registerData.location,
                validate: (value) => value!.validateEmpty(context),
                type: TextInputType.text,
                suffixIcon: Icon(Icons.location_on,),
                action: TextInputAction.next,
                onTab: () => registerData.onLocationClick(context),
                // onSubmit: () => loginData.userLogin(context),
              );
            },
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerData.showPassCubit,
            builder: (context, state) {
              return GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 5),
                hint: tr(context, "password"),
                controller: registerData.password,
                fieldTypes:
                state.data ? FieldTypes.password : FieldTypes.normal,
                validate: (value) => value!.validatePassword(context),
                type: TextInputType.visiblePassword,
                action: TextInputAction.next,
                suffixIcon: InkWell(
                  onTap: () {
                    registerData.showPassCubit.onUpdateData(!state.data);
                  },
                  child: state.data
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),

                ),
              );
            },
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerData.confirmShowPassCubit,
            builder: (context, state) {
              return GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 5),
                hint: tr(context, "confirmPassword"),
                controller: registerData.confirmPass,
                fieldTypes:
                state.data ? FieldTypes.password : FieldTypes.normal,
                validate: (value) => value!.validatePasswordConfirm(context, pass: registerData.password.text),
                type: TextInputType.visiblePassword,
                action: TextInputAction.done,
                suffixIcon: InkWell(
                  onTap: () {
                    registerData.confirmShowPassCubit.onUpdateData(!state.data);
                  },
                  child: state.data
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),

                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
