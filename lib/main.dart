import 'package:apiprac/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const deviceWidth = 375.0;
  static const deviceHeight = 812.0;
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(deviceWidth, deviceHeight),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: Color(0xFFFFFFFF), // Change to your desired color
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        });
  }
}
