import 'package:http/http.dart' as http;

class ListAPI {
  Future<http.Response> fetchProducts(int productId) {
    // Default URL
    var url = 'https://run.mocky.io/v3/dac586ff-bbf6-4664-8de7-8ef57d93f1ac';
    switch (productId) {
      case 0:
        {
          url = 'https://run.mocky.io/v3/dac586ff-bbf6-4664-8de7-8ef57d93f1ac';
        }
        break;

      case 1:
        {
          url = 'https://run.mocky.io/v3/475962b4-f143-473e-8c82-90d015b9815b';
        }
        break;

      case 2:
        {
          url = 'https://run.mocky.io/v3/475962b4-f143-473e-8c82-90d015b9815b';
        }
        break;
      case 3:
        {
          url = 'https://run.mocky.io/v3/475962b4-f143-473e-8c82-90d015b9815b';
        }
        break;
      case 4:
        {
          url = 'https://run.mocky.io/v3/475962b4-f143-473e-8c82-90d015b9815b';
        }
        break;
      default:
        {
          url = 'https://run.mocky.io/v3/dac586ff-bbf6-4664-8de7-8ef57d93f1ac';
        }
        break;
    }
    return http.get(url);
  }
}
