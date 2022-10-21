import 'package:bookshare/core/helper_methods.dart';
import 'package:bookshare/views/topics/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyView extends StatelessWidget {
  const BuyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 105.h),
            child: Image.asset(
              "assets/images/undraw_business_shop_qw5t.png",
              width: 210.w,
              height: 169.19.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 74.2.h, bottom: 33.h),
            child: const Text(
              "Buy And Sell Books With Us",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff17191D),
              ),
            ),
          ),
          Image.asset(
            "assets/images/99.png",
            width: 48.w,
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                fixedSize: const Size(184, 45),
                primary: const Color(0xffFF6EA1),
              ),
              onPressed: ()
              {
                navigatorTo(page: const TopicsView(),context: context);
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
