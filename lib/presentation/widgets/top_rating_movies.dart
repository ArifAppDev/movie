import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:movie/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:movie/core/routes/app_routes.dart';

import 'package:movie/presentation/screens/home/models/top_rating_movies.dart';
import 'package:movie/utils/app_color/app_colors.dart';

class TopRatingMovies extends StatelessWidget {
  const TopRatingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(topRatingMovies.length, (index) {
          return TopRatingMoviesDesing(
            topratingmoviImg: topRatingMovies[index]["image"],
            rating: topRatingMovies[index]["rating"],
            blurtemplete: topRatingMovies[index]["blur"],
          );
        }),
      ),
    );
  }
}

class TopRatingMoviesDesing extends StatelessWidget {
  const TopRatingMoviesDesing({
    super.key,
    required this.topratingmoviImg,
    required this.rating,
    required this.blurtemplete,
  });

  final String topratingmoviImg;
  final String rating;
  final String blurtemplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.moviedetails);
        },
        child: Container(
          height: 130,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(topratingmoviImg, fit: BoxFit.cover),
              Positioned(
                top: 1,
                right: 1,
                child: Row(
                  children: [
                    SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(blurtemplete),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  left: 3,
                                  right: 3,
                                ),
                                child: SvgPicture.asset(
                                  CustomIcons.uniqueStar,
                                  height: 16,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  right: 2,
                                ),
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.textwhite,
                                  ),
                                ),
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
      ),
    );
  }
}
