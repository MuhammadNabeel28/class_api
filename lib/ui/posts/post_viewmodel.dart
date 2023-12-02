import 'package:hanbhaee/data/models/post_model.dart';
import 'package:hanbhaee/data/models/unicorn_model.dart';
import 'package:hanbhaee/repository/post_repository.dart';
import 'package:hanbhaee/repository/unicorn_repository.dart';
import 'package:stacked/stacked.dart';

class PostViewModel extends BaseViewModel {
  final postRepository = PostRepository();
  final unicornRepository = UnicornRepository();

  List<PostModel> post = [];
  List<UnicornModel> unicorn = [];

  getPosts() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    post = await postRepository.getPosts();
    setBusy(false);
    rebuildUi();
  }

  getUnicorns() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    unicorn = await unicornRepository.getUnicorn();
    setBusy(false);
    rebuildUi();
  }

  addUnicorns() async {
    UnicornModel unicornModel = UnicornModel(
      name: "Kuch Bhi 3",
      age: 23,
      colour: "red",
    );
    Map<String, dynamic> body = unicornModel.toJson();
    setBusy(true);
    await unicornRepository.addUnicorn(body);
    await getUnicorns();
    rebuildUi();
  }

  updateUnicorns({required String id}) async {
    Map<String, dynamic> body = {
      "name": "Kuch Bhi 4",
      "age": 23,
      "colour": "yellow"
    };
    setBusy(true);
    await unicornRepository.addUnicorn(body);
    await getUnicorns();
    rebuildUi();
  }
}
