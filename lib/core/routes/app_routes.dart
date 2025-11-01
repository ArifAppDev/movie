import 'package:get/get.dart';
import 'package:movie/presentation/screens/home/home_screen.dart';
import 'package:movie/presentation/screens/movie_details/movie_details_screen.dart';

class AppRoutes {
  static const String homescreen = "/homescreen";
  static const String moviedetails = "/moviedetails";

  static List<GetPage> routes = [
    GetPage(name: homescreen, page: () => const HomeScreen()),
    GetPage(name: moviedetails, page: () => const MovieDetailsScreen()),
  ];
}
