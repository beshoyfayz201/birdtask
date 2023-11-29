import 'package:birdtask/home/presentation/controller/home_controller.dart';
import 'package:birdtask/home/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

List<GetPage> appPages = [
  GetPage(
      name: '/',
      page: () => const HomeScreen(),
      binding: BindingsBuilder(() {
        Get.put(HomeController(), permanent: true);
      }))
];
