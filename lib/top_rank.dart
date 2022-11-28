import 'package:flutter/material.dart';

import 'top_rank_detail.dart';

List<DetailRank> fakeTopRankLists = [
  const DetailRank(
    'category icon-11.png',
    'FRANCE',
    2047,
    'top2',
  ),
  const DetailRank(
    'category icon-34.png',
    'VIETNAM',
    2050,
    'top1',
  ),
  const DetailRank(
    'category icon-32.png',
    'THAILAND',
    2047,
    'top3',
  )
];

class TopRank extends StatelessWidget {
  const TopRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      for (var item in fakeTopRankLists) TopRankDetail(detail: item)
    ]);
  }
}
