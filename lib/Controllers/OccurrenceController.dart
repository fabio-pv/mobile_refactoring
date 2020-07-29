import 'package:fiscaliza_ja/Models/Occurrence.dart';
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
  }) async {
    try {
      final queryString = RequestUtil()
          .where(
            property: 'codigo',
            operator: RequestUtil.WHERE_LESS_THAN_OR_EQUAL_TO,
            value: '2019-114291',
          )
          .where(
            property: 'texto',
            operator: RequestUtil.WHERE_LIKE,
            value: keyword,
            ignoreNull: true,
          )
          .orderBy(
            property: 'codigo',
            order: RequestUtil.ORDER_DESC,
          )
          .page(value: page)
          .result();

      final iterable = await this._occurrenceService.retrieveAll(
            queryString: queryString,
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
