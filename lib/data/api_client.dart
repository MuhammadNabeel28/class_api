import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  // static const String baseUrl = "https://jsonplaceholder.typicode.com";
  static const String baseUrl =
      "https://crudcrud.com/api/01216db183144538b44296a2998d68f9";

  Future<List<dynamic>> get(String path) async {
    final response = await http.get(Uri.parse("$baseUrl/$path"));
    if (response.statusCode >= 200 || response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }

  Future<dynamic> post(
    String path, {
    required Map<String, dynamic> body,
  }) async {
    print("$baseUrl/$path");
    final response = await http.post(
      Uri.parse("$baseUrl/$path"),
      body: json.encode(body),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode >= 200 || response.statusCode < 300) {
      print("unicorn successfully added");
      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }

  Future<dynamic> put(
    String path, {
    required Map<String, dynamic> body,
  }) async {
    final response = await http.put(
      Uri.parse("$baseUrl/$path"),
      body: json.encode(body),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode >= 200 || response.statusCode < 300) {
      print("unicorn successfully updated");

      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }

  Future<List<dynamic>> delete(String path) async {
    final response = await http.delete(Uri.parse("$baseUrl/$path"));
    if (response.statusCode >= 200 || response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }
}
