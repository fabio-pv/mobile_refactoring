import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Services/OccurrenceService.dart';
import 'package:fiscaliza_ja/Utils/RequestUtil.dart';

class OccurrenceController {
  OccurrenceService _occurrenceService;

  OccurrenceController() {
    this._occurrenceService = new OccurrenceService();
  }

  Future<List<Occurrence>> getList({
    int page = 1,
    String keyword,
    OccurrenceFilter occurrenceFilter,
  }) async {
    try {
      var queryString = RequestUtil();

      if (occurrenceFilter != null) {
        queryString = queryString.where(
          property: occurrenceFilter.filter,
          operator: RequestUtil.OPERATORS[occurrenceFilter.operator],
          value: occurrenceFilter.value,
        );
      }

      queryString = queryString
          .orderBy(
            property: 'codigo',
            order: RequestUtil.ORDER_DESC,
          )
          .page(value: page);

      final iterable = await this._occurrenceService.retrieveAll(
            queryString: queryString.result(),
          );

      List<Occurrence> occurrenceList =
          iterable.map((x) => Occurrence.fromJson(x)).toList();

      return occurrenceList;
    } catch (e) {
      rethrow;
    }
  }

  Future<Occurrence> getOccurrence({String uuid}) async {
    try {
      final map = await this._occurrenceService.retrieve(
            uuid: uuid,
          );

      Occurrence occurrence = Occurrence.fromJson(map);
      return occurrence;
    } catch (e) {
      rethrow;
    }
  }
}
