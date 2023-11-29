import 'package:birdtask/home/domain/entity/posts_entity.dart';

class PostsModel extends PostsEntity {
  PostsModel(
      {required super.id,
      required super.userId,
      required super.title,
      required super.body});
  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
