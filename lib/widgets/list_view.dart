import 'package:flutter/material.dart';

import 'list_view_detail.dart';

class DetailListView {
  final int index;
  final String avatar;
  final String name;
  final int posts;

  const DetailListView(this.index, this.avatar, this.name, this.posts);
}

final lists = List.generate(
  96,
  (i) => DetailListView(
    i,
    'category icon-34.png',
    'VIETNAM',
    2000,
  ),
);

final lists2 = List.generate(
  96,
  (i) => DetailListView(
    i,
    'category icon-18.png',
    'JAPAN',
    2000,
  ),
);

class RankingList extends StatefulWidget {
  const RankingList({super.key, required this.isPost});
  final bool isPost;

  @override
  State<RankingList> createState() => _RankingListState();
}

class _RankingListState extends State<RankingList> {
  late ScrollController controller;
  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: ((isPost ? lists : lists2)
    //       .map((value) => ListViewDetail(detail: value))).toList(),
    // );

    return Scrollbar(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.isPost ? lists.length : lists2.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (BuildContext context, int index) {
            final item = (widget.isPost ? lists[index] : lists2[index]);
            return ListViewDetail(detail: item);
          }),
    );

    // return ListView.builder(
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemCount: lists.length,
    //     shrinkWrap: true,
    //     primary: false,
    //     itemBuilder: (BuildContext context, int index) {
    //       final item = (widget.isPost ? lists[index] : lists2[index]);
    //       return ListViewDetail(detail: item);
    //     });
  }

  void _scrollListener() {
    if (controller.position.extentAfter < 100) {
      setState(() {
        (widget.isPost ? lists : lists2).addAll(List.generate(
          5,
          (index) => DetailListView(
            index,
            'category icon-18.png',
            'JAPAN',
            2000,
          ),
        ));
      });
    }
  }
}
