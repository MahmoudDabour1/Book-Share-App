import 'package:bookshare/views/home/pages/profile/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: const Color(0xffFAFAFA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/iPhone X-XS-11 Pro – 51.png"),
                const Padding(
                  padding: EdgeInsets.only(top: 90, left: 30),
                  child: Text(
                    "Mahmoud Dabour",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 75),
                  child: Container(
                    height: 90.h,
                    width: 90.h,
                    margin: const EdgeInsets.only(top: 30),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purpleAccent.withOpacity(0.5),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/IMG20211124110006.png",
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 31.w,
                right: 28.w,
              ),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "21",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff212121),
                        ),
                      ),
                      Text(
                        "Books",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff212121),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, right: 28),
                    child: Column(
                      children: const [
                        Text(
                          "50k",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff212121),
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff212121),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff212121),
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff212121),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
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
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  const Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffC1C1C1),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  const Helper(url: "assets/images/buy.png", text: "My  Cart "),
                  const Helper(
                      url: "assets/images/credit-card.png", text: "Purchases "),
                  const Helper(
                      url: "assets/images/user (2).png", text: "Account "),
                  Padding(
                    padding: EdgeInsets.only(top: 21.h, bottom: 8.h),
                    child: const Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffC1C1C1),
                      ),
                    ),
                  ),
                  const Helper(
                      url: "assets/images/Shape.png", text: "Night Mode"),
                  const Helper(
                      url: "assets/images/notifications.png",
                      text: "Notification"),
                  const Helper(
                      url: "assets/images/global.png", text: "Language"),
                  const Helper(
                      url: "assets/images/information.png", text: "Help"),
                  const Helper(
                      url: "assets/images/Group 108.png", text: "Sign Out "),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
