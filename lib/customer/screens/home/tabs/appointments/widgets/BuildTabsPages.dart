part of 'AppointmentsWidgetsImports.dart';

class BuildTabsPages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          PreviousScreen(),
          Coming(),

        ],
      ),
    );
  }
}
