import 'package:sizer/sizer.dart';

import '../../../Helpers/theme/app_colors.dart';
import '../../../Widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../hotel/hotel_page.dart';

class PopularHotelModel extends StatelessWidget {
  final String title;
  final String position;
  final String price;
  final String image;
  final double starsNum;

  const PopularHotelModel(
    this.title, {
    Key? key,
    required this.image,
    required this.position,
    required this.price,
    required this.starsNum,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.w),
      child: Container(
        width: 40.w,
        margin: EdgeInsets.symmetric(horizontal: 3.w),
        decoration: BoxDecoration(
          color: AppColors.lightGray2,
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.w),
                topRight: Radius.circular(4.w),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lightGray2,
                  borderRadius: BorderRadius.circular(5.w),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HotelPageScreen(
                              title: title,
                              position: position,
                              price: price,
                              image: image)),
                    );
                  },
                  child: Image.network(
                    image,
                    width: 40.h,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(title),
                  TextWidget(
                    position,
                    color: AppColors.gray,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          price,
                          color: AppColors.lightBlue,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              starsNum.toString(),
                              color: AppColors.darkBlue,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.darkBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
