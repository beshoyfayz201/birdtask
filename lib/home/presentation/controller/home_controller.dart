import 'package:birdtask/home/data/models/posts_model.dart';
import 'package:birdtask/home/domain/repositories/home_repo.dart';
import 'package:birdtask/shared/widgets/custom_snacbar.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = RxBool(false);
  Rxn<List<PostsModel>?> posts = Rxn<List<PostsModel>?>();
  RxInt currentPage = RxInt(0);
  @override
  onInit() async {
    await getPosts();
    super.onInit();
  }

  Future<void> getPosts() async {
    isLoading.value = true;
    var response = await HomeRepo().getPosts();
    response.fold((err) {
      buildCustomSnackbar(err.message);
    }, (postsRes) {
      posts.value = postsRes;
    });
    isLoading.value = false;
  }
}
