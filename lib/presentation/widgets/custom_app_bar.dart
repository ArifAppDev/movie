import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:movie/core/custom_assets/custom_images/custom_images.dart';
import 'package:movie/utils/app_color/app_colors.dart';

import 'package:movie/utils/static_string/static_strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
      child: Column(
        children: [
          // main row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              //========= profile sercition ==============
              Row(
                children: [
                  Image.asset(CustomImages.profile),

                  SizedBox(width: 9),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StaticStrings.welcomeback,
                        style: TextStyle(
                          color: AppColors.textwhite,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Maria",
                        style: TextStyle(
                          color: AppColors.textwhite,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 9),

              //================icons section================
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      CustomIcons.notificcation,
                      colorFilter: const ColorFilter.mode(
                        AppColors.textwhite,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      CustomIcons.menu,
                      colorFilter: const ColorFilter.mode(
                        AppColors.textwhite,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),

          // =============search Box=================
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: StaticStrings.search,
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: AppColors.searchIconcolor,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                      color: AppColors.searchIconcolor,
                    ),
                    fillColor: AppColors.home,
                    filled: true,

                    // when the user is not focushed
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.home, width: 1),
                    ),

                    // when the user is foucushed
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.home, width: 1),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.home, width: 1),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 15),

              Container(
                height: 57,
                width: 57,
                decoration: BoxDecoration(
                  color: AppColors.home,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    CustomIcons.filer,
                    colorFilter: const ColorFilter.mode(
                      AppColors.textwhite,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
