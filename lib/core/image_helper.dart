import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageHelper extends StatelessWidget {
  const ImageHelper({Key? key, required this.url, required this.name}) : super(key: key);
  final String url,name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only( bottom: 30.h,left: 10.w),
      child: Column(
        children: [
          Container(
            height: 75.h,
            width: 75.h,
            margin:  EdgeInsets.only(top: 5.h),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purpleAccent.withOpacity(0.5),
            ),
            child: Stack(
              children: [
                Image.asset(
                  url,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 4.5.h),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 10.sp,
                color: const Color(0xff17191D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


