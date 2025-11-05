import 'package:flutter/material.dart';

import 'package:movie/presentation/screens/home/models/studios.dart';
import 'package:movie/utils/app_color/app_colors.dart';
import 'package:movie/utils/static_string/static_strings.dart';

class Studios extends StatelessWidget {
  const Studios({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StaticStrings.studios,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                StaticStrings.viewAll,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(studios.length, (index) {
              return StudiosDesing(
                studioImg: studios[index]["studioImg"],
                studioDetails: studios[index]["studioDescription"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class StudiosDesing extends StatelessWidget {
  const StudiosDesing({
    super.key,
    required this.studioImg,
    required this.studioDetails,
  });

  final String studioImg;
  final String studioDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
            child: Image.asset(studioImg, fit: BoxFit.cover),
          ),
        ),

        SizedBox(height: 5),

        SizedBox(
          height: 120,
          width: 190,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              studioDetails,
              style: TextStyle(
                color: AppColors.textwhite,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ),
        ),

        SizedBox(height: 180),
      ],
    );
  }
}
