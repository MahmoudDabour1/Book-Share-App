class Topics {
  String url, name;
  bool isSelected;

  Topics({
    required this.name,
    required this.url,
    required this.isSelected,
  });
}

List<Topics> topic = [
  Topics(
    url: "assets/images/SKnowles-USCapitol-1.png",
    name: "Politics",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/GeorgeThompsonTeachingHistory01.png",
    name: "History ",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/Mask Group 5.png",
    name: "Science",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/WEB_SCC_Westwood_art1.png",
    name: "Law ",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/iStock-10131071761-1.png",
    name: "Food",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/Mask Group 6.png",
    name: "MEDICAL",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/Mask Group 8.png",
    name: "Design",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/slider1-640x640.png",
    name: "Culture",
    isSelected: false,
  ),
  Topics(
    url: "assets/images/Mask Group 7.png",
    name: "Sport",
    isSelected: false,
  ),
];

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class TopicsHelper extends StatelessWidget {
//   TopicsHelper(
//       {Key? key, required this.url, required this.name, required this.selected})
//       : super(key: key);
//   final String url, name;
//   bool selected;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 100.h,
//           width: 100.h,
//           // margin: const EdgeInsets.only(top: 30),
//           clipBehavior: Clip.antiAlias,
//           decoration: const BoxDecoration(
//               shape: BoxShape.circle, color: Color(0xffFF6EA1)),
//           child: Stack(
//             children: [
//               Image.asset(
//                 url,
//                 height: 190,
//                 width: 190,
//                 fit: BoxFit.cover,
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             top: 10.h,
//           ),
//           child: Text(
//             name,
//             style: TextStyle(
//               fontSize: 12.sp,
//               color: const Color(0xff17191D),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
