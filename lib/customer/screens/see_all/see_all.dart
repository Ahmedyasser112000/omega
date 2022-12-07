part of 'see_all_imports.dart';

class SeeAll extends StatefulWidget {
  final String title;
  final bool showFilter;

  const SeeAll({Key? key, required this.title,required this.showFilter}) : super(key: key);
  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: DefaultAppBar(
        title: widget.title,
        leading:widget.showFilter ?  IconButton(
          icon: Icon(
            Icons.filter_list_rounded,
            color: MyColors.primary,
          ),
          onPressed: () {
            Nav.navigateToButtonSheet(context, this, Filter(),
                sheetHeight: 250);
          },
        ): Container(),
        isCenter: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: MyColors.primary,
            ),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          BuildSearch(),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              itemBuilder: (_, index) {
                return DepartmentContainer();
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
