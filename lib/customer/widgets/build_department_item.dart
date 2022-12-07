


import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../general/constants/MyColors.dart';
import '../../res.dart';

class BuildDepartmentItem extends StatelessWidget {
  const BuildDepartmentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (_,index){
          return Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(8),
            height: 90,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.greyWhite),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Image.asset(Res.Welcome_bro),
                MyText(title: "image", color: MyColors.black, size: 11),
                MyText(title: "image", color: MyColors.black, size: 11),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
