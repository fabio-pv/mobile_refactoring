import 'package:http/http.dart' as http;

class ApiClientMethod {
  static final Object GET = http.get;
  static const Function POST = http.post;
  static const Function PATCH = http.patch;
  static const Function DELETE = http.delete;
}
