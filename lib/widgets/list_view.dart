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

class RankingList extends StatelessWidget {
  const RankingList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: <Widget>[
          SizedBox(
            width: 500,
            height: 8700, // constrain height
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 96,
                itemBuilder: (BuildContext context, int index) {
                  return ListViewDetail(detail: lists[index]);
                }),
          )
        ]));
  }
}
