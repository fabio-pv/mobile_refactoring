import 'package:http/http.dart' as http;

class ApiClientMethod {
  static const Function GET = http.get;
  static const Function POST = http.post;
  static const Function PATCH = http.patch;
  static const Function DELETE = http.delete;
}
