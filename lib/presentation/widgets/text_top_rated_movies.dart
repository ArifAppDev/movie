import 'package:flutter/material.dart';
import 'package:movie/utils/app_color/app_colors.dart';

import 'package:movie/utils/static_string/static_strings.dart';

class TextTopRatedMovies extends StatelessWidget {
  const TextTopRatedMovies({super.key});

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
                StaticStrings.topratingMovies,
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
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StaticStrings.movies,
                style: TextStyle(
                  color: AppColors.purpleLight,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(width: 50),
              Text(
                StaticStrings.tvSeries,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
