import 'package:first_activity/Helpers/theme/app_colors.dart';
import 'package:first_activity/Module/home/home_widgets/HotelPackage.dart';
import 'package:first_activity/Module/home/home_widgets/PopularHotel%20.dart';

import 'package:first_activity/Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class HomePageScreen extends StatelessWidget {
  static const roudName = "/HomePageScreen";
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cochineal-jane-street-0095xxx-1642610173.jpg",
      "https://www.re-thinkingthefuture.com/wp-content/uploads/2021/04/A3762-20-Futuristic-bedroom-interior-ideas.jpg",
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cochineal-jane-street-0095xxx-1642610173.jpg",
      "https://www.re-thinkingthefuture.com/wp-content/uploads/2021/04/A3762-20-Futuristic-bedroom-interior-ideas.jpg",
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cochineal-jane-street-0095xxx-1642610173.jpg",
    ];
    List<String> titles = ["hotel1", "hotel2", "hotel3", "hotel4", "hotel5"];
    List<String> positions = ["gaza", "hyfa", "yafa", "gaza", "yafa"];
    List<String> price = ["125\$", "100\$", "140\$", "85\$", "175\$"];
    List<double> starsNum = [4.5, 5, 4, 5, 4.5];

    List<Color> color = [
      AppColors.lightBlue,
      AppColors.green,
      AppColors.green,
      AppColors.lightBlue,
      AppColors.green,
    ];

    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: null,
        body: ListView(
          physics: BouncingScrollPhysics(),
          // shrinkWrap: true,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      TextWidget(
                        "Hello Pragathesh",
                        fontSize: 14,
                        color: AppColors.gray,
                        textAlign: TextAlign.start,
                      ),
                      TextWidget(
                        "Find your hotel",
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2.w),
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.w),
                    child: const Image(
                      image: NetworkImage(
                        // scale: 5,
                        "https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                color: AppColors.lightGray2,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: const TextField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Search for hotel',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 80.h,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 5.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: const TextWidget(
                      "Popular hotel",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(
                    height: 22.h,
                    child: ListView.builder(
                        //   shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return PopularHotelModel(titles[index],
                              image: images[index],
                              position: positions[index],
                              price: price[index],
                              starsNum: starsNum[index]);
                        }),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: const TextWidget(
                          "Hot packages",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: const TextWidget(
                          "View All",
                          fontSize: 16,
                          color: AppColors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        // scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return HotelpackageModel(titles[index],
                              image: images[index],
                              position: positions[index],
                              price: price[index],
                              color: color[index]);
                        }),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
