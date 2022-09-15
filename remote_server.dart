import 'package:practice2/models/Posts.dart';
import 'package:http/http.dart' as http;

class RemoteServer {
  Future<List<Posts>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postsFromJson(json);
    }
  }
}
