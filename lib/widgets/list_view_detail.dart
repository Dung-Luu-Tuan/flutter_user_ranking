import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/list_view_screen.dart';
import 'list_view.dart';

class ListViewDetail extends StatelessWidget {
  ListViewDetail({super.key, required this.detail});

  final DetailListView detail;

  final list = [for (var i = 4; i <= 99; i++) i];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondRoute(
                    s: list[detail.index].toString(), detail: detail.name)),
          );
        },
        child: Row(children: <Widget>[
          SizedBox(
              width: 15,
              child: Text(list[detail.index].toString(),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ))),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            child: Image.asset(
              'assets/images/category/${detail.avatar}',
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    detail.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text('${detail.posts.toString()} posts',
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Roboto',
                            color: Color.fromARGB(255, 255, 174, 0))),
                  ),
                ],
              )),
          SvgPicture.asset(
            'assets/images/icon/arrow-right.svg',
            color: Colors.grey,
            width: 20,
            height: 20,
          ),
        ]),
      ),
    );
  }
}
