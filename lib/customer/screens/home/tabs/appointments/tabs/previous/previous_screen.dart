part of 'previous_imports.dart';

class PreviousScreen extends StatefulWidget {
  const PreviousScreen({Key? key}) : super(key: key);

  @override
  _PreviousScreenState createState() => _PreviousScreenState();
}

class _PreviousScreenState extends State<PreviousScreen> {
  final PreviousScreenData servicesData = PreviousScreenData();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: 6,
          itemBuilder: (_, index) {
            return Container(
              height: 120,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyColors.greyWhite),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: CachedImage(
                        url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHDs3S4lYN4XZ-97Enx0U3bv791jqUsGR9NQ&usqp=CAU",
                      ),
                    ),
                    title: MyText(
                        title: "RN Maram Ahmed",
                        color: MyColors.black,
                        size: 12),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            title: "6/10/2022",
                            color: MyColors.black,
                            size: 12),
                        MyText(
                            title: "at 8:00 pm",
                            color: MyColors.grey,
                            size: 12),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: MyText(
                        title: "${520}\$", color: Colors.red, size: 12),
                  )
                ],
              ),
            );
          }),
    );
  }
}
