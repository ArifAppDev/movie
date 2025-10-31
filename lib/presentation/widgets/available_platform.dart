import 'package:flutter/material.dart';
import 'package:movie/core/utils/colors/app_colors.dart';
import 'package:movie/core/utils/static_strings/static_strings.dart';

import 'package:movie/presentation/screens/movie_details/models/dynamic_platfrom_models.dart';

class AvailablePlatform extends StatelessWidget {
  const AvailablePlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            StaticStrings.availablePlatform,
            style: TextStyle(
              fontSize: 19,
              color: AppColors.textwhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 20),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(platfroms.length, (index) {
              return AvailablePlatformDesign(
                platfromImg: platfroms[index]["Img"],
                platformName: platfroms[index]["platfromName"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class AvailablePlatformDesign extends StatelessWidget {
  const AvailablePlatformDesign({
    super.key,
    required this.platfromImg,
    required this.platformName,
  });

  final String platfromImg;
  final String platformName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(platfromImg, fit: BoxFit.cover),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 50,
            width: 60,
            child: Text(
              platformName,
              style: TextStyle(
                fontSize: 13,
                color: AppColors.textwhite,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
