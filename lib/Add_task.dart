import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController AddtaskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3556AB),
        title: Text(
          "Add New Task",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 39.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Task Name",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              controller: AddtaskController, //here also
              decoration: InputDecoration(
                fillColor: Color(0xFFFDFDFD),
                filled: true,
                border: OutlineInputBorder(
                  // Default border
                  borderRadius: BorderRadius.circular(10.r), // Rounded corners
                  borderSide: BorderSide(
                    color: Colors.grey, // Border color
                    width: 2.w, // Border width
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border when not focused
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  // Border when focused
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    color: Colors.blue, // Blue border when focused
                    width: 2.w,
                  ),
                ),
              ),
            ),
            Spacer(),
            Stack(children: [
              Image.asset("assets/rect.png"),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    "Done",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )))
            ]),
            SizedBox(
              height: 32.h,
            )
          ],
        ),
      ),
    );
  }
}
