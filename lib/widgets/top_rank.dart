import 'package:flutter/material.dart';

import 'top_rank_detail.dart';

List<DetailRank> fakeTopRankLists1 = [
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

List<DetailRank> fakeTopRankLists2 = [
  const DetailRank(
    'category icon-17.png',
    'ITALIA',
    2047,
    'top2',
  ),
  const DetailRank(
    'category icon-18.png',
    'JAPAN',
    2047,
    'top1',
  ),
  const DetailRank(
    'category icon-20.png',
    'KOREA',
    2050,
    'top3',
  ),
];

class TopRank extends StatelessWidget {
  const TopRank({super.key, required this.isPost, required this.isYearly});

  final bool isPost;
  final bool isYearly;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      for (var item
          in isPost == isYearly ? fakeTopRankLists1 : fakeTopRankLists2)
        TopRankDetail(detail: item)
    ]);
  }
}
