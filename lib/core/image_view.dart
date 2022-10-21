import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageView extends StatelessWidget {
  const ImageView(
      {Key? key,
      required this.url,
      required this.firstText,
      required this.secondText})
      : super(key: key);

  final String url, firstText, secondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130.w,
          height: 200.h,
          child: Image.asset(
            url,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 8.h),
          child: Text(
            firstText,
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color(0xff242126),
            ),
          ),
        ),
        Text(
          secondText,
          style: TextStyle(
            fontSize: 11.sp,
            color: const Color(0xff212121),
          ),
        ),
      ],
    );
  }
}
