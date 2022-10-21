import 'package:bookshare/core/textform_helper.dart';
import 'package:bookshare/views/home/pages/store/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreView extends StatelessWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: TextForm(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: FilmView(
              url: "assets/images/1.png",
              firstText: "The Heart of Hell",
              secondText: "Mitch Weiss",
              thirdText: "The untold story of courage and sacrifice",
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          const FilmView(
              url: "assets/images/2.png",
              firstText: 'Adrennes 1944',
              secondText: "Antony Beevor",
              thirdText: "#1 international bestseller and award "),
          SizedBox(
            height: 30.h,
          ),
          const FilmView(
              url: "assets/images/3.png",
              firstText: 'War on the Gothic Line',
              secondText: "Christian Jennings",
              thirdText: "Through the eyes of thirteen men and  "),
        ],
      ),
    );
  }
}
