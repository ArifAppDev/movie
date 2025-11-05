import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/core/routes/app_routes.dart';

import 'package:movie/presentation/screens/home/models/my_favourite.dart';
import 'package:movie/utils/app_color/app_colors.dart';
import 'package:movie/utils/static_string/static_strings.dart';

class MyFavoutite extends StatelessWidget {
  const MyFavoutite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StaticStrings.myFavorite,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                ),
              ),

              Text(
                StaticStrings.viewAll,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(myFacourites.length, (index) {
              return MyFavouriteDesign(
                favImg: myFacourites[index]["Img"],
                movieName: myFacourites[index]["movieName"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class MyFavouriteDesign extends StatelessWidget {
  const MyFavouriteDesign({
    super.key,
    required this.favImg,
    required this.movieName,
  });

  final String favImg;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.moviedetails);
            },
            child: Container(
              height: 117,
              width: 142,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(favImg, fit: BoxFit.cover),
            ),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 80,
            width: 120,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.moviedetails);
              },
              child: Text(
                movieName,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.textwhite,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
