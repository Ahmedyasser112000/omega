part of 'ChangeLangImports.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguage> createState() => _ChangeLangState();
}

class _ChangeLangState extends State<ChangeLanguage> {
  final ChangeLangData changeLangData = ChangeLangData();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildDivider(),
        BuildLangTextInput(),
        Expanded(
          child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: changeLangData.changeLangBloc,
            builder: (context, state) {
              return ListView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: [
                  BuildLangItem(
                    fillColor:
                        state.data == 1 ? MyColors.primary : MyColors.white,
                    borderColor:
                        state.data == 1 ? MyColors.primary : MyColors.grey,
                    title: tr(context, "langAr"),
                    flagImg: Res.egyp,
                    onTap: () {
                      changeLangData.changeLangBloc.onUpdateData(1);
                    },
                    changeLangData: changeLangData,
                    isChecked: state.data == 1,
                  ),
                  BuildLangItem(
                    fillColor:
                        state.data == 2 ? MyColors.primary : MyColors.white,
                    borderColor:
                        state.data == 2 ? MyColors.primary : MyColors.grey,
                    title: tr(context, "langEn"),
                    flagImg: Res.united,
                    onTap: () {
                      changeLangData.changeLangBloc.onUpdateData(2);
                    },
                    changeLangData: changeLangData,
                    isChecked: state.data == 2,
                  ),
                  BuildLangButton(
                    changeLangData: changeLangData,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
