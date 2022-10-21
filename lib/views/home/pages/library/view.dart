import 'package:bookshare/core/textform_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookshare/views/home/pages/library/model.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 60.h, bottom: 31.h),
          child: const TextForm(),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 23.w),
              child: Text(
                "General",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffFF6EA1),
                ),
              ),
            ),
            Text(
              "New  ",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff707070),
              ),
            ),
            SizedBox(
              width: 23.w,
            ),
            Text(
              "Most Viewed",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff707070),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            children: const [
              ItemsView(
                backgroundImage: "assets/images/Rectangle 80.png",
                name: "Biography",
                image: "assets/images/Biography.png",
              ),
              ItemsView(
                  backgroundImage: "assets/images/Rectangle 102.png",
                  name: "Business",
                  image: "assets/images/Business.png"),
              ItemsView(
                backgroundImage: "assets/images/Rectangle 103.png",
                name: "Children",
                image: "assets/images/Children.png",
              ),
              ItemsView(
                backgroundImage: "assets/images/Rectangle 104.png",
                name: "Cookery",
                image: "assets/images/Cookery.png",
              ),
              ItemsView(
                backgroundImage: "assets/images/Rectangle 105.png",
                name: "Fiction",
                image: "assets/images/Fiction.png",
              ),
              ItemsView(
                backgroundImage: "assets/images/Rectangle 106.png",
                name: "Graphic Novels",
                image: "assets/images/Graphic Novels.png",
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
