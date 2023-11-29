class PostsEntity {
  int userId;
  int id;
  String title;
  String body;

  PostsEntity(
      {
      required this.id,
      required this.title,
      required this.body,
      required this.userId});
}
