part of 'HomeWidgetsImports.dart';

class BuildTabItem extends StatelessWidget {
  final String icon;

  const BuildTabItem({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(icon),
            size: 25,
          ),
        ],
      ),
      height: 70,
    );
  }
}
