part of 'NotificationImports.dart';

class AppNotifications extends StatefulWidget {
  const AppNotifications({Key? key}) : super(key: key);

  @override
  State<AppNotifications> createState() => _AppNotificationsState();
}

class _AppNotificationsState extends State<AppNotifications> {
  final AppNotificationData appNotificationData = AppNotificationData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Appointments",isCenter: true,),
      body: GenericListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        params: [context],
        emptyStr: tr(context,"noNotifications"),
        type: ListViewType.normal,
        children: [
          BuildNotificationItem(

            appNotificationData: appNotificationData,
          ),
          BuildNotificationItem(

            appNotificationData: appNotificationData,
          ),
        ],
      ),
    );

  }
}