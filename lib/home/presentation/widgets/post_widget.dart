import 'package:birdtask/home/data/models/posts_model.dart';
import 'package:birdtask/home/presentation/widgets/post_widget_components/postindecators.dart';
import 'package:birdtask/home/presentation/widgets/post_widget_components/user_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostWidget extends StatelessWidget {
  final PostsModel postsModel;
  const PostWidget({super.key, required this.postsModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserHeader(),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: Get.width * 0.9,
              child: Text(
                postsModel.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              width: Get.width * 0.9,
              child: Text(
                postsModel.body,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )),
          const PostIndecatorsRibbon()
        ],
      ),
    );
  }
}
