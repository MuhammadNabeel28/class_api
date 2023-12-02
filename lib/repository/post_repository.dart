import 'package:hanbhaee/data/api_client.dart';
import 'package:hanbhaee/data/models/post_model.dart';

class PostRepository {
  final _apiClient = ApiClient();

  Future<List<PostModel>> getPosts() async {
    List<PostModel> posts = [];
    List<dynamic> postsResponse = await _apiClient.get('posts');
    for (var i in postsResponse) {
      posts.add(PostModel.fromJson(i));
    }
    return posts;
  }
}
