class ApiClientBody {
  static dynamic makeBody({
    dynamic body,
  }) {
    try {
      return body;
    } catch (e) {
      rethrow;
    }
  }
}
