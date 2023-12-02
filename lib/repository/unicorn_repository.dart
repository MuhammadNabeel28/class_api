import 'package:hanbhaee/data/api_client.dart';
import 'package:hanbhaee/data/models/unicorn_model.dart';

class UnicornRepository {
  final _apiClient = ApiClient();

  Future<List<UnicornModel>> getUnicorn() async {
    List<UnicornModel> unicorn = [];
    List<dynamic> postsResponse = await _apiClient.get('unicorns');
    for (var i in postsResponse) {
      unicorn.add(UnicornModel.fromJson(i));
    }
    return unicorn;
  }

  Future<UnicornModel> addUnicorn(Map<String, dynamic> body) async {
    final postsResponse = await _apiClient.post('unicorns', body: body);
    return UnicornModel.fromJson(postsResponse);
  }

  Future<UnicornModel> updateUnicorn(Map<String, dynamic> body) async {
    final postsResponse = await _apiClient.put('unicorns', body: body);
    return UnicornModel.fromJson(postsResponse);
  }
}
