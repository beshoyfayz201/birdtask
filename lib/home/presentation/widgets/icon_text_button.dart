import 'package:birdtask/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconTextButton extends GetView<HomeController> {
  final String txt;
  final IconData icon;
  final int index;
  final Function? onTap;
  const IconTextButton(
      {super.key,
      required this.icon,
      required this.txt,
      required this.index,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                maximumSize: Size(Get.width * 0.35, Get.height * 0.06),
                backgroundColor: controller.currentPage.value == index
                    ? Colors.green
                    : Colors.grey.shade200),
            onPressed: () {
              onTap == null ? controller.currentPage.value = index : onTap!();
            },
            child: Row(
              children: [
                Icon(icon, color: Colors.black),
                const SizedBox(width: 8),
                Text(
                  txt,
                  style:const TextStyle(color: Colors.black),
                )
              ],
            )),
      ),
    );
  }
}
