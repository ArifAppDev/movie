import 'package:flutter/material.dart';

import 'package:movie/presentation/widgets/actors_director.dart';
import 'package:movie/presentation/widgets/available_platform.dart';
import 'package:movie/presentation/widgets/dynamic_movie_details.dart';
import 'package:movie/presentation/widgets/related_movies.dart';
import 'package:movie/utils/app_color/app_colors.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.colorAppbar),
        title: Text(
          "Movie Details",
          style: TextStyle(
            color: AppColors.textwhite,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        backgroundColor: AppColors.foundationblackDarker,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.home,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // =========movie details==============
                    DynamicMoviesDetails(),

                    // ========= Available Platfrom ==========
                    AvailablePlatform(),

                    //============ Actor & Director Sections ==========
                    ActorsDirector(),

                    // Related Movies================
                    RelatedMovies(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
