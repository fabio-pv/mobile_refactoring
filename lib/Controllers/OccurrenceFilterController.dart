import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Services/OccurrenceFilterService.dart';

class OccurrenceFilterController {
  OccurrenceFilterService _occurrenceFilterService;

  OccurrenceFilterController() {
    this._occurrenceFilterService = new OccurrenceFilterService();
  }

  Future<List<OccurrenceFilter>> getList() async {
    try {
      final iterable = await this._occurrenceFilterService.retrieveAll();

      List<OccurrenceFilter> occurrenceFilterList =
          iterable.map((e) => OccurrenceFilter.fromJson(e)).toList();

      return occurrenceFilterList;
    } catch (e) {
      rethrow;
    }
  }
}
