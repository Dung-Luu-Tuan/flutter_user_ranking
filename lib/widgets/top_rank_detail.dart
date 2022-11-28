import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailRank {
  final String avatar;
  final String name;
  final int posts;
  final String top;

  const DetailRank(this.avatar, this.name, this.posts, this.top);
}

const topRank = {
  'top1': {
    'padding': 20.0,
    'icon': 'icon_score_master_sliver-45.svg',
    'color': Colors.yellow,
    'rank': 'No.1',
    'size': 80.0
  },
  'top2': {
    'padding': 40.0,
    'icon': 'icon_score_master_sliver-45.svg',
    'color': Colors.grey,
    'rank': 'No.2',
    'size': 60.0
  },
  'top3': {
    'padding': 50.0,
    'icon': 'icon_score_master_sliver-45.svg',
    'color': Colors.brown,
    'rank': 'No.3',
    'size': 50.0
  }
};

class TopRankDetail extends StatelessWidget {
  const TopRankDetail({super.key, required this.detail});

  final DetailRank detail;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: topRank[detail.top]?['padding'] as double),
            child: SvgPicture.asset(
              'assets/images/icon/${topRank[detail.top]?['icon']}',
              width: 25,
              height: 25,
              color: topRank[detail.top]?['color'] as Color,
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Text('${topRank[detail.top]?['rank']}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  )),
            ),
          ),
          Expanded(
            flex: 0,
            child: Image.asset(
              'assets/images/category/${detail.avatar}',
              width: topRank[detail.top]?['size'] as double,
              height: topRank[detail.top]?['size'] as double,
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Text(detail.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  )),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('${detail.posts.toString()} posts',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.orange,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
