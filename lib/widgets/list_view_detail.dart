import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'list_view.dart';
import '../screens/list_view_screen.dart';

class ListViewDetail extends StatelessWidget {
  const ListViewDetail({super.key, required this.detail});

  final DetailListView detail;

  @override
  Widget build(BuildContext context) {
    var list = [for (var i = 4; i <= 99; i++) i];
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    flex: 0,
                    child: SizedBox(
                        width: 15,
                        child: Text(list[detail.index].toString(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            )))),
                Expanded(
                    flex: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      child: Image.asset(
                        'assets/images/category/${detail.avatar}',
                        width: 60,
                        height: 60,
                      ),
                    )),
                Expanded(
                    flex: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            margin: const EdgeInsets.only(top: 0, left: 0),
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
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text('${detail.posts.toString()} posts',
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    color: Color.fromARGB(255, 255, 174, 0))),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Expanded(
                flex: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondRoute(
                              s: list[detail.index].toString(),
                              detail: detail.name)),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/images/icon/arrow-right.svg',
                    color: Colors.grey,
                    width: 20,
                    height: 20,
                  ),
                )),
          ]),
    );
  }
}
