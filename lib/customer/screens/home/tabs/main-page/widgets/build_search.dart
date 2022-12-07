part  of 'MainPageWidgetsImports.dart';




class BuildSearch extends StatelessWidget {
  const BuildSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fillColor: MyColors.white,
      fieldTypes: FieldTypes.normal,
      hint: "Search",
      // hint: tr(context, "search"),
      hintColor: MyColors.greyWhite,
      prefixIcon: Icon(Icons.search_rounded,color: MyColors.greyWhite,),
      suffixIcon: Icon(Icons.keyboard_voice_rounded,color: MyColors.greyWhite,),
      onSubmit: () {
        MainPageData().searchController.clear();
      },
      controller: MainPageData().searchController,
      margin:
      const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      action: TextInputAction.done,
      type: TextInputType.text,
      validate: (value) => value!.validateEmpty(context),
    );
  }
}
