import 'package:fiscaliza_ja/Services/NeighborhoodService.dart';
import 'package:fiscaliza_ja/Models/Neighborhood.dart';
import 'package:fiscaliza_ja/Utils/RequestUtil.dart';

class NeighborhoodController {
  NeighborhoodService _neighborhoodService;

  NeighborhoodController() {
    this._neighborhoodService = new NeighborhoodService();
  }

  Future<List<Neighborhood>> getList() async {
    try {
      final querString = RequestUtil()
          .pagination(
            value: RequestUtil.PAGINATION_FALSE,
          )
          .query;

      final iterable = await this._neighborhoodService.retrieveAll(
            queryString: querString,
          );

      List<Neighborhood> neighborhoodList =
          iterable.map((e) => Neighborhood.fromJson(e)).toList();

      return neighborhoodList;
    } catch (e) {
      rethrow;
    }
  }
}
