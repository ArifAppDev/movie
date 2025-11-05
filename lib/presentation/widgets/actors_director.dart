import 'package:flutter/material.dart';

import 'package:movie/presentation/screens/movie_details/models/dy_actor_director_models.dart';
import 'package:movie/utils/app_color/app_colors.dart';
import 'package:movie/utils/static_string/static_strings.dart';

class ActorsDirector extends StatelessWidget {
  const ActorsDirector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            StaticStrings.actorsDirector,
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
            children: List.generate(actordirectors.length, (index) {
              return ActDirecDesign(
                dyactorImg: actordirectors[index]["actorImg"],
                dyactorCat: actordirectors[index]["actorCatogory"],
                dyactorName: actordirectors[index]["actorname"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class ActDirecDesign extends StatelessWidget {
  const ActDirecDesign({
    super.key,
    required this.dyactorImg,
    required this.dyactorCat,
    required this.dyactorName,
  });

  final String dyactorImg;
  final String dyactorCat;
  final String dyactorName;

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
            child: Image.asset(dyactorImg, fit: BoxFit.cover),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 30,
            width: 50,
            child: Text(
              dyactorCat,
              style: TextStyle(
                fontSize: 13,
                color: AppColors.textwhite,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10),

          SizedBox(
            height: 40,
            width: 90,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                dyactorName,
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
