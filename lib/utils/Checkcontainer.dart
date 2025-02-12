import 'package:apiprac/Edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkcontainer extends StatelessWidget {
  final String text;
  const Checkcontainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 91.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: Color(0xFFE7E7E7),
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // Extends the shadow outward
            blurRadius: 10, // Softens the shadow's edge
            offset:
                Offset(0, 10), // Moves shadow downward (under the container)
          ),
          BoxShadow(
            color: Color(0XFFFFFFFF), // Darker shadow for visibility
            spreadRadius: 20, // Makes the shadow extend outward
            blurRadius: 10, // Softens the edges of the shadow
            offset: Offset(-1.0, -4.0), // Moves shadow downward
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 23.w,
          ),
          GestureDetector(
            onTap: () {
              //use toggle methods betweeen tik and hole
              //use gpt and turnery condition
            },
            child: Image.asset(
              "assets/fill.png",
              width: 32.w,
              height: 32.h,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF071D55),
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Edit()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  color: Color(0xFF071D55),
                  width: 2.w,
                ),
              ),
              width: 51.w,
              height: 51.h,
              child: Center(
                  child: Text(
                "Edit",
                style: TextStyle(
                  color: Color(0xFF071D55),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
          ),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}
