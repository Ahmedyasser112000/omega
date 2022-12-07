part of 'AppointmentsWidgetsImports.dart';

class BuildTabsView extends StatelessWidget {
  final AppointmentsData appointmentsData;

  const BuildTabsView({required this.appointmentsData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: appointmentsData.tabsCubit,
      builder: (_, state) {
        return Container(
          decoration: BoxDecoration(
            border : Border.all(color: MyColors.greyWhite),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: TabBar(
            indicatorColor: Colors.transparent,
            onTap: (value) => appointmentsData.tabsCubit.onUpdateData(value),
            tabs: [
              BuildTabsItem(title: "previous", index: 0, current: state.data),
              BuildTabsItem(
                  title: "coming", index: 1, current: state.data)
            ],
          ),
        );
      },
    );
  }
}
