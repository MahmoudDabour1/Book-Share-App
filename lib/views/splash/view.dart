import 'dart:async';

import 'package:bookshare/core/helper_methods.dart';
import 'package:bookshare/views/onbording/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      navigatorTo(
        context: context,
        page: const navView(),
        withHistory: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xffFF6EA1),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 21.6.w),
            child: Stack(
              children: [
                SizedBox(
                  width: 180,
                  height: 822,
                  child: Image.asset(
                    "assets/images/Path 5.png",
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 130.w),
                    child: SizedBox(
                      width: 97.w,
                      height: 88.8.h,
                      child: Image.asset(
                        "assets/images/Group 6.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
