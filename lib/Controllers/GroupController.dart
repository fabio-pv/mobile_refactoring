import 'package:fiscaliza_ja/Services/GroupService.dart';
import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Utils/RequestUtil.dart';

class GroupController {
  GroupService _groupService;

  GroupController() {
    this._groupService = new GroupService();
  }

  Future<List<Group>> getList() async {
    try {
      final queryString = RequestUtil()
          .orderBy(
            property: 'nome',
            order: RequestUtil.ORDER_ASC,
          )
          .pagination(
            value: RequestUtil.PAGINATION_FALSE,
          )
          .result();

      final iterable = await this._groupService.retrieveAll(
            queryString: queryString,
          );

      List<Group> groupList = iterable.map((e) => Group.fromJson(e)).toList();
      return groupList;
    } catch (e) {
      rethrow;
    }
  }
}
