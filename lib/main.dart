import 'dart:io';

import 'package:first_activity/Module/hotel/hotel_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Module/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePageScreen(),
        routes: {
          HomePageScreen.roudName: (cox) => const HomePageScreen(),
          // HotelPageScreen.roudName: (cox) => const HotelPageScreen(),
        },
      );
    });
  }
}
