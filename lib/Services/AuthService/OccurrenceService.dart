import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';
import 'package:fiscaliza_ja/Utils/StatusCodeUtil.dart';

class OccurrenceService {
  ApiClient _apiClient;

  OccurrenceService() {
    this._apiClient = new ApiClient();
  }

  Future<void> retrive() async {
    try {
      final response = await this._apiClient.doRequest(
            endpoint: 'occurrenc',
            method: ApiClientMethod.GET,
            statusCodeExpected: StatusCodeUtil.OK,
          );
      print(response.statusCode);
    } catch (e) {
      rethrow;
    }
  }
}
