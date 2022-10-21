import 'package:bookshare/core/helper_methods.dart';
import 'package:bookshare/views/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookshare/views/topics/model.dart';

class TopicsView extends StatefulWidget {
  const TopicsView({Key? key}) : super(key: key);

  @override
  State<TopicsView> createState() => _TopicsViewState();
}

class _TopicsViewState extends State<TopicsView> {
  @override
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          children: [
            SizedBox(
                height: 195.h,
                child: Image.asset(
                  "assets/images/8888888888888.png",
                )),
            Padding(
              padding: EdgeInsets.only(top: 100.h, left: 30.w),
              child: Text(
                "Welcome\nChoose the topics",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.1 / 1.5,
            ),
            itemCount: topic.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  topic[index].isSelected = !topic[index].isSelected;
                });
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 90.h,
                        height: 90.h,
                        child: Image.asset(topic[index].url),
                      ),
                      topic[index].isSelected
                          ? SizedBox(
                              height: 90.h,
                              width: 90.h,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 190,
                                    width: 190,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent.withOpacity(0.3),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Center(
                                    child: Image.asset(
                                        "assets/images/correct (1).png"),
                                  ),
                                ],
                              ))
                          : Column(
                              children: [
                                Container(
                                  height: 100.h,
                                  width: 100.h,
                                  // margin: const EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF6EA1)),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        topic[index].url,
                                        height: 190,
                                        width: 190,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.h,
                                  ),
                                  child: Text(
                                    topic[index].name,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff17191D),
                                    ),
                                  ),
                                ),
                              ],
                            )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Text(
          "More Topics",
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 20.sp,
            color: const Color(0xffFF6EA1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              fixedSize: const Size(327, 50),
              primary: const Color(0xffFF6EA1),
            ),
            onPressed: () {
              navigatorTo(page: const HomeView(), context: context);
            },
            child: const Text(
              'Apply',
            ),
          ),
        ),
      ]),
    );
  }
}
