import 'package:get/get.dart';
import '../Models/PostModel.dart';
import '../Repositories/PostRepo.dart';

class PostController extends GetxController {
  List<Post> postsList = [];
  PostRepo postRepo = Get.put(PostRepo(), tag: 'postRepo');

  getPosts() async {
    postsList = await postRepo.getPosts();
    update();
  }
}
