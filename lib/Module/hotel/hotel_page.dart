import 'package:first_activity/Module/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Helpers/theme/app_colors.dart';

class HotelPageScreen extends StatelessWidget {
  static const roudName = "/HotelPageScreen";
  final String title;
  final String position;
  final String price;
  final String image;
  const HotelPageScreen(
      {super.key,
      required this.title,
      required this.position,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                image ??
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cochineal-jane-street-0095xxx-1642610173.jpg",
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50.w),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
                      child: Container(
                        width: 10.w,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        decoration: BoxDecoration(
                          color: AppColors.lightGray2,
                          borderRadius: BorderRadius.circular(50.w),
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const HomePageScreen()));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(1.w),
                              child: SvgPicture.asset(
                                "assets/images/chevron-left.svg",
                                width: 2.w,
                              ),
                            )),
                      ))),
            ],
          ),
          Container(
              padding: EdgeInsets.only(top: 5.w, left: 5.w, right: 5.w),
              child: Text(
                title ?? "hotel2",
                style: const TextStyle(fontSize: 25),
              )),
          Container(
              padding: EdgeInsets.only(
                top: 2.w,
                left: 5.w,
                bottom: 2.w,
                right: 5.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        position ?? "position",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "  -  ",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "Show in Map",
                        style: TextStyle(fontSize: 18, color: AppColors.gray),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.w,
                    ),
                    child: Text(position ??
                        "data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          const Text("Price"),
                          Text(price ?? "\$120"),
                        ]),
                        Column(children: [
                          const Text("Review"),
                          Row(
                            children: const [
                              Icon(Icons.star),
                              Text("4.5"),
                            ],
                          ),
                        ]),
                        Column(children: [
                          const Text("Resint Booked"),
                          Stack(
                            children: [
                              Image.network(
                                "https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg",
                                height: 5.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Image.network(
                                  "https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg",
                                  height: 5.w,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: Image.network(
                                  "https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg",
                                  height: 5.w,
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.w,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 2.w),
                      child: const Text(
                        "Aminites",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.w,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: SvgPicture.asset(
                                  "assets/images/sports-car.svg"),
                            )),
                        const Text("Parking"),
                      ]),
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: SvgPicture.asset("assets/images/bath.svg"),
                            )),
                        const Text("Bath"),
                      ]),
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: SvgPicture.asset(
                                "assets/images/glass-and-bottle-of-wine.svg",
                                width: 2.5.w,
                                // height: 2.7.w,
                              ),
                            )),
                        const Text("Bar"),
                      ]),
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: SvgPicture.asset(
                                "assets/images/wifi.svg",
                                width: 1.7.h,
                              ),
                            )),
                        const Text("Wifi"),
                      ]),
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: SvgPicture.asset(
                                "assets/images/gym.svg",
                                height: 2.2.w,
                              ),
                            )),
                        const Text("Gym"),
                      ]),
                      Column(children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 4.w),
                              child: SvgPicture.asset(
                                "assets/images/more.svg",
                                // width: 2.5.h,
                                height: 0.3.h,
                              ),
                            )),
                        const Text("More"),
                      ]),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.w),
                    child: Row(
                      children: [
                        Card(
                            color: AppColors.gray2,
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: const Icon(
                                Icons.favorite_border,
                                size: 40,
                                color: AppColors.lightBlue,
                              ),
                            )),
                        SizedBox(
                          width: 75.w,
                          child: Card(
                              color: AppColors.lightBlue,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: TextButton(
                                  child: const Text(
                                    "Book now",
                                    style: TextStyle(color: AppColors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
