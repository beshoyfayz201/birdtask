import 'package:birdtask/home/presentation/controller/home_controller.dart';
import 'package:birdtask/home/presentation/widgets/page_taps.dart';
import 'package:birdtask/home/presentation/widgets/post_widget.dart';
import 'package:birdtask/home/presentation/widgets/search_txt_field.dart';
import 'package:birdtask/shared/widgets/default_buttons.dart';
import 'package:birdtask/shared/widgets/retry_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildPageTabs(),
                const SizedBox(height: 20),
                const CustomTextField(hintTxt: '     Search'),
                const SizedBox(height: 20),
                const AppButton(),
                Obx(() => controller.isLoading.value
                    ? Padding(
                        padding: EdgeInsets.all(Get.width * 0.2),
                        child: const CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      )
                    : controller.posts.value == null
                        ? RetryWidget(
                            onRetry: () async {
                              controller.getPosts();
                            },
                          )
                        : Column(
                            children: List.generate(
                                controller.posts.value!.length,
                                (index) => PostWidget(
                                      postsModel:
                                          controller.posts.value![index],
                                    )),
                          ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
