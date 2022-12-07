part of 'filter_imports.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final FilterData filterData = FilterData();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: filterData.filterCubit,
      builder: (_, state) {
        return Container(
          height: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio(
                    activeColor: MyColors.primary,
                    value: 1,
                    groupValue: filterData.filterCubit.state.data,
                    onChanged: (int? value) => filterData.filterCubit.onUpdateData(value!),
                  ),
                  MyText(
                    title: "Top Rated",
                    color: MyColors.primary,
                    size: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: MyColors.primary,
                    value: 2,
                    groupValue: filterData.filterCubit.state.data,
                    onChanged: (int? value) => filterData.filterCubit.onUpdateData(value!),
                  ),
                  MyText(
                    title: "Nearest",
                    color: MyColors.primary,
                    size: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),

              DefaultButton(title: "Confirm", onTap: (){
                AutoRouter.of(context).pop();
              })

            ],
          ),
        );
      },
    );
  }
}
