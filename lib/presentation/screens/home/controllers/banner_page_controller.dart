import 'package:get/get.dart';

class BannerPageIndicatior extends GetxController {
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;
    update();
  }
}
