import 'package:flutter/material.dart';
import 'package:movie/core/utils/colors/app_colors.dart';
import 'package:movie/core/utils/static_strings/static_strings.dart';
import 'package:movie/presentation/home/model/my_favourite.dart';

class RelatedMovies extends StatelessWidget {
  const RelatedMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            StaticStrings.relatedMovies,
            style: TextStyle(
              fontSize: 19,
              color: AppColors.textwhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(myFacourites.length, (index) {
              return RelatedmoviesDesign(
                dyRelatedMoviesImg: myFacourites[index]["Img"],
                dyRelatedMoviesName: myFacourites[index]["movieName"],
              );
            }),
          ),
        ),

        SizedBox(height: 200),
      ],
    );
  }
}

class RelatedmoviesDesign extends StatelessWidget {
  const RelatedmoviesDesign({
    super.key,
    required this.dyRelatedMoviesImg,
    required this.dyRelatedMoviesName,
  });

  final String dyRelatedMoviesImg;
  final String dyRelatedMoviesName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          Container(
            height: 117,
            width: 142,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(dyRelatedMoviesImg, fit: BoxFit.cover),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 80,
            width: 120,
            child: Text(
              dyRelatedMoviesName,
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
