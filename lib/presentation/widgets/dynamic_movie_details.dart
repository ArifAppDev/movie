import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:movie/core/utils/colors/app_colors.dart';
import 'package:movie/core/utils/static_strings/static_strings.dart';
import 'package:movie/presentation/data/models/dynamic_movies_details.dart';

class DynamicMoviesDetails extends StatelessWidget {
  const DynamicMoviesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(dynamicMoviesDetails.length, (index) {
        return DynamicMovieDetailsDesign(
          dymovieName: dynamicMoviesDetails[index]["movieName"],
          dymovieduration: dynamicMoviesDetails[index]["duration"],
          movieRatings: dynamicMoviesDetails[index]["ratings"],
          dymovieReleasedata: dynamicMoviesDetails[index]["releaseDate"],
          dygenre1: dynamicMoviesDetails[index]["genrefirst"],
          dygenre2: dynamicMoviesDetails[index]["genresecond"],
          dymovieImg: dynamicMoviesDetails[index]["movieImg"],
          synopsisDescription: dynamicMoviesDetails[index]["synopsis"],
        );
      }),
    );
  }
}

class DynamicMovieDetailsDesign extends StatelessWidget {
  const DynamicMovieDetailsDesign({
    super.key,
    required this.dymovieName,
    required this.dymovieduration,
    required this.movieRatings,
    required this.dymovieReleasedata,
    required this.dygenre1,
    required this.dygenre2,
    required this.dymovieImg,
    required this.synopsisDescription,
  });

  final String dymovieImg;
  final String dymovieName;
  final String dymovieduration;
  final String movieRatings;
  final String dymovieReleasedata;
  final String dygenre1;
  final String dygenre2;

  final String synopsisDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Image.asset(
            dymovieImg,
            height: 241,
            width: 335,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(height: 20),

        // custom button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: AppColors.purple,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StaticStrings.addtoFavourite,
                  style: TextStyle(
                    color: AppColors.textwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),

                SizedBox(width: 15),

                SvgPicture.asset(CustomIcons.favouriteUnselected),
              ],
            ),
          ),
        ),
        //=======movie name==============
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: Text(
              dymovieName,
              style: TextStyle(
                color: AppColors.textwhite,
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(CustomIcons.durationclock, height: 20),

                  SizedBox(width: 5),
                  Text(
                    dymovieduration,
                    style: TextStyle(
                      color: AppColors.foundartionwhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),

                  SizedBox(width: 20),

                  SvgPicture.asset(CustomIcons.yellowStar, height: 20),
                  SizedBox(width: 7),
                  Text(
                    movieRatings,
                    style: TextStyle(
                      color: AppColors.foundartionwhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              // custom Buttom========
              Row(
                children: [
                  Container(
                    height: 37,
                    width: 87,
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),

                    child: Center(
                      child: Text(
                        StaticStrings.watched,
                        style: TextStyle(
                          color: AppColors.textwhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  height: 0.3,
                  color: const Color.fromARGB(255, 60, 71, 82),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 10,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StaticStrings.releasedate,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),

              Text(
                StaticStrings.genre,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    dymovieReleasedata,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.foundartionwhite,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.bottoomNavigationbarColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        dygenre1,
                        style: TextStyle(
                          color: AppColors.textwhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.bottoomNavigationbarColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        dygenre2,
                        style: TextStyle(
                          color: AppColors.textwhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  height: 0.3,
                  color: const Color.fromARGB(255, 60, 71, 82),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StaticStrings.synopsis,
                style: TextStyle(
                  color: AppColors.textwhite,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Text(
              synopsisDescription,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.foundartionwhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
