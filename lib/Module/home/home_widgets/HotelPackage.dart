import 'package:first_activity/Module/hotel/hotel_page.dart';
import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';

import '../../../Helpers/theme/app_colors.dart';
import '../../../Widgets/text_widget.dart';

class HotelpackageModel extends StatelessWidget {
  final String title;
  final String position;
  final String price;
  final String image;
  final Color? color;

  const HotelpackageModel(this.title,
      {Key? key,
      required this.image,
      required this.position,
      required this.price,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HotelPageScreen(
                title: title, position: position, price: price, image: image)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.w),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40.w,
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            decoration: BoxDecoration(
              color: AppColors.lightGray2,
              borderRadius: BorderRadius.circular(5.w),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.w),
                    bottomLeft: Radius.circular(4.w),
                  ),
                  child: Container(
                    width: 30.w,
                    height: 13.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightGray2,
                      borderRadius: BorderRadius.circular(5.w),
                    ),
                    child: Image.network(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Column(
                    // mainAxisAlignment:
                    // MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(title),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: AppColors.gray,
                            size: 16,
                          ),
                          TextWidget(
                            position,
                            color: AppColors.gray,
                            fontSize: 14,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              price,
                              color: AppColors.lightBlue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        width: 40.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.car_rental,
                              color: color,
                            ),
                            Icon(
                              Icons.bathtub_outlined,
                              color: color,
                            ),
                            Icon(
                              Icons.local_drink_sharp,
                              color: color,
                            ),
                            Icon(
                              Icons.wifi,
                              color: color,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_new
                new RotatedBox(
                    quarterTurns: -1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3.w),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        color: AppColors.lightBlue,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Book now",
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
