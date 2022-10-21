import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper extends StatelessWidget {
  const Helper({Key? key, required this.url, required this.text})
      : super(key: key);
  final String url, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Container(
        color: Colors.white,
        height: 56.h,
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(
              url,
              width: 19.67.w,
              height: 18.2.h,
            ),
            SizedBox(
              width: 62.1.w,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
