import 'package:http/http.dart' as http;

class ListAPI {
  Future<http.Response> fetchAlbum() {
    return http
        .get('https://run.mocky.io/v3/dac586ff-bbf6-4664-8de7-8ef57d93f1ac');
  }
}
