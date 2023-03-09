

  import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

Widget sectionHeading(String title,[double? height]) {
    return Container(
      color: Colors.black,
      height: height,
      child: Center(
          child: Container(
            padding: EdgeInsets.only(left:mainHeight(5),right: mainHeight(5),bottom: mainHeight(6)),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/headlinebackground.png"),fit: BoxFit.fill
        )),
        child: Text(
          title,
          style: mainHeadLineStyle(),
        ),
      )),
    );
  }  

 
// Widget appBarTitle(String title,[double? height]) {
//     return Row(
//       children: [
//         Container(
//           color: Colors.black,
//           height: height,
//           child: Center(
//               child: Container(
//                 padding: EdgeInsets.only(left:mainHeight(2),right: mainHeight(2),bottom: mainHeight(1)),
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage("assets/headlinebackground.png"),fit: BoxFit.fill
//             )),
//             child: Text(
//               title,
//               style: TextStyle(
//           fontSize: mainShortSize(6),
//           fontWeight: FontWeight.w800,
//         ),
//             ),
//           )),
//         ),
//       ],
//     );
//   }  

  Widget circleProfileImage([double? radious]) {
    return Center(
        child: Transform.scale(
          scaleX: -1.0,
          child: CircleAvatar(
              //17
              backgroundColor: Colors.black,
              radius: radious ?? mainHeight(15),
              backgroundImage: const AssetImage("assets/abdulla_photo35.png")),
        ),
      );
  }