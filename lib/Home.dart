import 'package:apiprac/Add_task.dart';

import 'package:apiprac/services/network.dart';
import 'package:apiprac/utils/Checkcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    Future.microtask(
        () => Provider.of<ApiCall>(context, listen: false).Fetchdata());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(414.w, 116.h),
            child: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: Container(
                width: 414.w,
                height: 116.h,
                color: const Color(0xFF3556AB),
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/niggah.png",
                      width: 50.w,
                      height: 50.h,
                    ),
                    SizedBox(width: 21.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello {your_Name}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "{your_own@email.com}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Consumer<ApiCall>(builder: (_, call, child) {
            return Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/rectrii.png", width: double.infinity),
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/win.png",
                            width: 53.10.w,
                            height: 40.89.h,
                          ),
                          SizedBox(width: 27.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                call.post?.ecommerce?.categories
                                        ?.map((Categories) {
                                      return ListTile(
                                        title: Text(
                                          Categories.name.toString(),
                                        ),
                                      );
                                    }).toString() ??
                                    "N/A",
                                style: TextStyle(
                                  color: Color(0xFF071D55),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                "No fuss, no ads, for only \$1 a \nmonth",
                                style: TextStyle(
                                  color: Color(0xFF071D55),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0.h,
                      right: 20.w,
                      child: Container(
                        height: 71.h,
                        width: 66.11.w,
                        color: const Color(0xFF071D55),
                        child: Center(
                          child: Text(
                            "\$1",
                            style: TextStyle(
                              color: Color(0xFFF2C94C),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Column(children: [
                      Checkcontainer(
                        text: "Training at the Gym",
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Checkcontainer(text: "Play Paddle with friends"),
                      SizedBox(
                        height: 24.h,
                      ),
                      Checkcontainer(
                        text: "Burger BBQ with family",
                      )
                    ])),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 35.h, right: 20.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddTask()));
                      },
                      child: Image.asset(
                        "assets/button.png",
                        width: 60.w,
                        height: 61.h,
                      ),
                    ),
                  ),
                ),
              ],
            );
          })),
    );
  }
}
