import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Providers/HomeScreenProvider.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/OccurrenceWidget.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ListOccurrenceWidget extends StatefulWidget {
  final List<Occurrence> occurrenceList;
  final Function({int page}) loadHandler;

  ListOccurrenceWidget({
    @required this.occurrenceList,
    @required this.loadHandler,
  });

  @override
  _ListOccurrenceWidgetState createState() => _ListOccurrenceWidgetState();
}

class _ListOccurrenceWidgetState extends State<ListOccurrenceWidget> {
  int currentPage = 1;
  BuildContext contextAux;
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  bool scrollListenDown = true;
  double scrollListenValue = 0;
  double scrollListenDiff = 200;

  void shouldChangePage({
    int currentIndex,
  }) {
    if ((currentIndex + 1) < this.widget.occurrenceList.length) {
      return;
    }

    this.currentPage++;
    this.widget.loadHandler(page: this.currentPage);
  }

  void _onRefresh() async {
    HomeScreenProvider.of(this.contextAux).doFilter();
    this._refreshController.refreshCompleted();
  }

  void _onLoading() async {
    _refreshController.loadComplete();
  }

  void _headerControllerIntercept({double value}) {
    if (this.scrollListenValue <= (value - this.scrollListenDiff)) {
      this.scrollListenValue = value;
      if (this.scrollListenDown == false) {
        return;
      }
      this.scrollListenDown = false;
      HomeScreenProvider.of(this.contextAux).headerController(
        remove: true,
      );
      return;
    }
    if (this.scrollListenValue >= (value + this.scrollListenDiff)) {
      this.scrollListenValue = value;
      if (this.scrollListenDown == true) {
        return;
      }
      this.scrollListenDown = true;
      HomeScreenProvider.of(this.contextAux).headerController(
        remove: false,
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    this.contextAux = context;
    if (widget.occurrenceList.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollEndNotification == false) {
          return;
        }
        this._headerControllerIntercept(
          value: notification.metrics.pixels,
        );
      },
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: MaterialClassicHeader(
          offset: 99,
        ),
        controller: this._refreshController,
        onRefresh: this._onRefresh,
        onLoading: this._onLoading,
        child: ListView.builder(
          padding: EdgeInsets.only(
            top: 150,
            left: 10,
            right: 10,
          ),
          itemCount: this.widget.occurrenceList.length,
          itemBuilder: (BuildContext context, int index) {
            this.shouldChangePage(currentIndex: index);
            return OccurrenceWidget(
              occurrence: this.widget.occurrenceList[index],
            );
          },
        ),
      ),
    );
  }
}
