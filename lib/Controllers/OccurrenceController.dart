import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Services/OccurrenceService.dart';

class OccurrenceController {
  OccurrenceService _occurrenceService;

  OccurrenceController() {
    this._occurrenceService = new OccurrenceService();
  }

  Future<List<Occurrence>> getList() async {
    try {
      final iterable = await this._occurrenceService.retriveAll();

      List<Occurrence> occurrenceList =
          iterable.map((x) => Occurrence.fromJson(x)).toList();

      return occurrenceList;
    } catch (e) {
      rethrow;
    }
  }
}
