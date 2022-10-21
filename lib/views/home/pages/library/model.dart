import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({
    Key? key,
    required this.backgroundImage,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String backgroundImage, name, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: SizedBox(
            width: 190.w,
            height: 210.h,
            child: Image.asset(
              backgroundImage,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, top: 23.h),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                image,
                width: 160,
                height: 160,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
