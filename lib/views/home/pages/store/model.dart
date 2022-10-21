import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilmView extends StatelessWidget {
  const FilmView(
      {Key? key,required this.url, required this.firstText, required this.secondText, required this.thirdText,})
      : super(key: key);


  final String url, firstText, secondText, thirdText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Image.asset(
            url,
            height: 175,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstText,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff242126),
              ),
            ),
            Text(
              secondText,
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xff242126),
              ),
            ),
            Image.asset(
              "assets/images/Group 46.png",
              width: 100.w,
              height: 50.h,
            ),
            Text(
              thirdText,
              style: TextStyle(
                fontSize: 10.sp,
                color: const Color(0xff242126),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    fixedSize: const Size(110, 29.63),
                    primary: const Color(0xffFF6EA1),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    fixedSize: const Size(117, 29.63),
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add to wishlist',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
