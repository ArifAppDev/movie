import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie/core/custom_assets/custom_icons/custom_icons.dart';

import 'package:movie/presentation/widgets/custom_app_bar.dart';
import 'package:movie/presentation/widgets/movie_banner.dart';
import 'package:movie/presentation/widgets/my_favoutite.dart';
import 'package:movie/presentation/widgets/studios.dart';
import 'package:movie/presentation/widgets/text_top_rated_movies.dart';
import 'package:movie/presentation/widgets/top_rating_movies.dart';
import 'package:movie/utils/app_color/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.foundationblackDarker,
      body: Column(
        children: [
          // ===========custo App bar=================
          CustomAppBar(),

          Expanded(
            child: Container(
              color: AppColors.home,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //==========movie banner===============
                    MovieBanner(),

                    //=======Text================
                    TextTopRatedMovies(),

                    // =========Top Rating Movies Banner============
                    TopRatingMovies(),

                    //======My Favourite==============
                    MyFavoutite(),

                    // ==============Studio==============
                    Studios(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottoomNavigationbarColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                CustomIcons.homeSelected,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorAppbar,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                CustomIcons.proClikunselected,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorAppbar,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "profile Check",
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                CustomIcons.schedule,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorAppbar,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Schedule",
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                CustomIcons.favouriteUnselected,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorAppbar,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Favourite",
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                CustomIcons.prounselected,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorAppbar,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
