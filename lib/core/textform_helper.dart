import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

final controller = TextEditingController();

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffix: SizedBox(
                width:20.w ,
                height:20.h,
                child: Image.asset("assets/images/Group 100.png"),
            ),
            suffixIconColor: Colors.black,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
            hintText: "Search Books, Authors",
            hintStyle: TextStyle(
              color: const Color(0xff212121),
              fontSize: 14.sp,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
