import 'dart:convert';

class ErrorUtil {
  static void error({Exception exception}) {
    try {
      final messageJson = exception.toString().replaceFirst('Exception: ', '');
      final messageObject = jsonDecode(messageJson);
      print(messageObject['error']);
    } catch (e) {
      print('Erro maximo');
    }
  }
}
