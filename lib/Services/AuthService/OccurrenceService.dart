import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';

class OccurrenceService {
  ApiClient _apiClient;

  OccurrenceService() {
    this._apiClient = new ApiClient();
  }

  Future<void> retrive() async {
    try {
      final response = await this._apiClient.doRequest(
            endpoint: 'occurrence',
            method: ApiClientMethod.GET,
            statusCodeExpected: 200,
          );

      print(response.statusCode);
    } catch (e) {
      rethrow;
    }
  }
}
