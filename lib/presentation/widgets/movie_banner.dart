import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/core/routes/app_routes.dart';
import 'package:movie/core/utils/colors/app_colors.dart';
import 'package:movie/presentation/screens/home/controllers/banner_page_controller.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // dependency injection...................
    final pagecontroller = Get.put(BannerPageIndicatior());

    final List<String> bannerImg = [
      "assets/images/banner1.png",
      "assets/images/banner2.png",
      "assets/images/banner3.png",
    ];

    final List<String> moviename = ["Alita", "X-Men", "Morbius"];
    final List<String> users = [
      "From 342 users",
      "From 421 users",
      "From 268 users",
    ];
    final List<String> studioname = [
      "Marvel Studios",
      "Marvel Studios",
      "Marvel Studios",
    ];

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.moviedetails);
            },
            child: CarouselSlider(
              options: CarouselOptions(
                height: 180,
                autoPlay: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  pagecontroller.updateIndex(index);
                },
              ),
              items: bannerImg.asMap().entries.map((i) {
                int index = i.key;
                String imagepath = i.value;

                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),

                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // backround image
                            Image.asset(imagepath, fit: BoxFit.cover),

                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                  ],
                                ),
                              ),
                            ),

                            // Text overlay
                            Positioned(
                              bottom: 20,
                              right: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // main row
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                moviename[index],
                                                style: TextStyle(
                                                  color: AppColors.textwhite,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                studioname[index],
                                                style: TextStyle(
                                                  color: AppColors.textwhite,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: AppColors
                                                        .yellowStarColor,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color:
                                                        AppColors.colorAppbar,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color:
                                                        AppColors.colorAppbar,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color:
                                                        AppColors.colorAppbar,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color:
                                                        AppColors.colorAppbar,
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                users[index],
                                                style: TextStyle(
                                                  color: AppColors.textwhite,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),

        /// smooth page controller
        GetBuilder<BannerPageIndicatior>(
          builder: (controller) {
            return SmoothPageIndicator(
              controller: PageController(
                initialPage: controller.currentIndex,
              ), // PageController
              count: bannerImg.length,
              effect: SwapEffect(
                activeDotColor: AppColors.purple,
                dotColor: Colors.white,
              ), // your preferred effect
              onDotClicked: (index) {},
            );
          },
        ),
      ],
    );
  }
}
