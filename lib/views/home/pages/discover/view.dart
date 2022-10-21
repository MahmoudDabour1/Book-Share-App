import 'package:bookshare/core/image_helper.dart';
import 'package:bookshare/core/image_view.dart';
import 'package:bookshare/core/textform_helper.dart';
import 'package:bookshare/views/home/pages/discover/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverView extends StatelessWidget {
  DiscoverView({Key? key}) : super(key: key);

  final urlImages = [
    "assets/images/Fatherhood.png",
    "assets/images/The Fatal Tree.png",
    "assets/images/Day Four.png",
    "assets/images/Dissapearance of Emile Zola.png",
    "assets/images/How To Be The Best In Time And Space.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 482.140.w,
                  height: 365.h,
                  child: Image.asset("assets/images/Path 5839999999.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 44.h, left: 16.w, right: 16.w, bottom: 19.h),
                  child: const TextForm(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 102.h, left: 16.w),
                  child: Text(
                    "Our Top Picks",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: SizedBox(
                    height: 250.h,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.h,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayInterval: const Duration(seconds: 2),
                      ),
                      items: [
                        Column(
                          children: [
                            Image.asset(
                              scroll[0].image,
                              width: 120.h,
                              height: 160.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              scroll[0].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              scroll[1].image,
                              width: 120.h,
                              height: 160.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              scroll[1].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              scroll[2].image,
                              width: 120.h,
                              height: 160.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              scroll[2].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              scroll[3].image,
                              width: 120.h,
                              height: 160.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              scroll[3].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              scroll[4].image,
                              width: 120.h,
                              height: 160.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              scroll[4].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            const ImageHelper(
                              url: "assets/images/WEB_SCC_Westwood_art.png",
                              name: "Add",
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35.h),
                              child: SizedBox(
                                  width: 90.w,
                                  height: 20.h,
                                  child: Image.asset(
                                    "assets/images/more.png",
                                  )),
                            ),
                          ],
                        ),
                        const ImageHelper(
                            url: "assets/images/iStock-10131071761-1.png",
                            name: "Food"),
                        const ImageHelper(
                            url: "assets/images/Mask Group 6.png",
                            name: "MEDICAL"),
                        const ImageHelper(
                            url:
                                "assets/images/GeorgeThompsonTeachingHistory01.png",
                            name: "History "),
                        const ImageHelper(
                            url: "assets/images/Mask Group 5.png",
                            name: "Science"),
                      ],
                    ),
                  ),
                  Text(
                    "Trending Books",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff242126),
                    ),
                  ),
                  SizedBox(
                      height: 420,
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisExtent: 180,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        children: [
                          Image.asset(
                            "assets/images/full-share-1 copy 12.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                          Image.asset(
                            "assets/images/1333.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                          Image.asset(
                            "assets/images/1444.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                          Image.asset(
                            "assets/images/1555.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                          Image.asset(
                            "assets/images/full-share-1 copy 13.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                          Image.asset(
                            "assets/images/1666.png",
                            width: 105.5.w,
                            height: 169.95.h,
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Text(
                      "Best Share",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff242126),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.h,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const ImageView(
                            url: "assets/images/The Zoo.png",
                            firstText: "Fatherhood",
                            secondText: "by Christopher Wilson",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, right: 10.w),
                            child: const ImageView(
                              url: "assets/images/In A Land Of Paper Gods.png",
                              firstText: "In A Land Of Paper",
                              secondText: "by Rebecca Mackenzie",
                            ),
                          ),
                          const ImageView(
                            url: "assets/images/Tattletale.png",
                            firstText: "Tattletale",
                            secondText: "by Sarah J. Noughton",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 39.h),
                    child: Text(
                      "Recently Viewed",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff242126),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.h,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Row(
                          children: [
                            const ImageView(
                              url: "assets/images/The Fatal Tree.png",
                              firstText: "The Fatal Tree",
                              secondText: "by Jake Arnott",
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, right: 10.w),
                              child: const ImageView(
                                url: "assets/images/Day Four.png",
                                firstText: "Day Four",
                                secondText: "by LOTZ, SARAH",
                              ),
                            ),
                            const ImageView(
                              url: "assets/images/D2D.png",
                              firstText: "Door to Door",
                              secondText: "by Edward Humes",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
