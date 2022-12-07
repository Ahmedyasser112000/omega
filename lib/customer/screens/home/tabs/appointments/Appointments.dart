part of 'AppointmentsImports.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  final AppointmentsData appointmentsData = AppointmentsData();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColors.white,
        appBar: DefaultAppBar(title: "Appointments",isCenter: true,),
        body: Column(
          children: [
            BuildTabsView(appointmentsData: appointmentsData),
            BuildTabsPages(),
          ],
        ),
      ),
    );
  }
}
