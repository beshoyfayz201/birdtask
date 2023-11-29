import 'package:birdtask/core/errors/api_error_handler.dart';
import 'package:birdtask/core/errors/general_error_message.dart';
import 'package:birdtask/home/data/models/posts_model.dart';
import 'package:birdtask/home/data/data_source/api/api_helper.dart';
import 'package:birdtask/home/data/data_source/api/endpoints.dart';
import 'package:dartz/dartz.dart';

class HomeRepo {
  final DioImpl dioImpl = DioImpl();

  Future<Either<ErrorMessage, List<PostsModel>>> getPosts() async {
    try {
      List<dynamic> json = await dioImpl.get(endPoint: Endpoints.posts);
      return Right(json.map((e) => PostsModel.fromJson(e)).toList());
    } on PrimaryServerException catch (e) {
      return Left(ErrorMessage(message: e.message, status: false));
    } catch (e) {
      return Left(ErrorMessage(message: "fail to load Data", status: false));
    }
  }
}
