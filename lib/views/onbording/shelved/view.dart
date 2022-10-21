import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShelvedView extends StatelessWidget {
  const ShelvedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 105.h),
                child: Image.asset(
                  "assets/images/undraw_book_lover_mkck.png",
                  width: 250.31.w,
                  height: 199.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 58.7.h, bottom: 33.h),
                child: const Text(
                  " Discovery 20 Million\nBooks Shelved Online",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff17191D),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/Group 98.png",
                width: 48.w,
                height: 10.h,
              ),
            ],
          ),
        ));
  }
}
