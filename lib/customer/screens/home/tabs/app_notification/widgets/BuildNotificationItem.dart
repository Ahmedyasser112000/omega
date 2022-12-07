part of 'BuildNotificationWidgetImports.dart';

class BuildNotificationItem extends StatelessWidget {
  final AppNotificationData appNotificationData;

  const BuildNotificationItem({required this.appNotificationData});

  @override
  Widget build(BuildContext context) {
    return AnimationContainer(
      index: 0,
      scale: true,
      duration: Duration(seconds: 1),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(blurRadius: 1, spreadRadius: .1, color: MyColors.grey)
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                color: MyColors.primary,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHDs3S4lYN4XZ-97Enx0U3bv791jqUsGR9NQ&usqp=CAU",
                    ),
                    // fit: BoxFit.fill,
                    scale: 4),
              ),
              width: 40,
              height: 40,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Appointment With RN Reem Ali Were Accepted",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12.0, color: Colors.black),
                  ),
                  Text(
                    "Today at 2:05 PM",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12.0, color: Colors.black),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
    // ),
  }
}
