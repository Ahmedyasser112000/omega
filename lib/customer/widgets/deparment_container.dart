import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../general/constants/MyColors.dart';
import '../../res.dart';



class DepartmentContainer extends StatelessWidget {
  const DepartmentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      height: 100,
      width: 80,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.greyWhite),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Image.asset(Res.Welcome_bro,scale: 2.6,),
          MyText(title: "image", color: MyColors.black, size: 11,fontWeight: FontWeight.w600,),
          MyText(title: "image", color: MyColors.black, size: 11,fontWeight: FontWeight.w600,),
        ],
      ),
    );
  }
}
