import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 105.h),
                child: Image.asset(
                  "assets/images/undraw_Books_l33t.png",
                  width: 400.w,
                  height: 230.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.h),
                child: Center(
                  child: Image.asset(
                    "assets/images/Path 315.png",
                    width: 247.05.w,
                    height: 165.h,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 58.7.h, bottom: 33.h),
            child: const Text(
              "  Share Your Favourite Books\nWith Your Family And Friends",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff17191D),
              ),
            ),
          ),
          Image.asset(
            "assets/images/Group 97.png",
            width: 48.w,
            height: 10.h,
          ),
        ],
      ),
    ));
  }
}
