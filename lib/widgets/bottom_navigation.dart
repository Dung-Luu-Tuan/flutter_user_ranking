import 'package:flutter/material.dart';

import 'list_view.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.isPost});

  final bool isPost;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 40),
                    child: const Text("7",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        )),
                  )),
              Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset(
                      'assets/images/category/${isPost ? lists[0].avatar : lists2[0].avatar}',
                      width: 50,
                      height: 50,
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
                          child: Text(
                              isPost
                                  ? lists[0].name.toString()
                                  : lists2[0].name.toString(),
                              style: const TextStyle(
                                fontSize: 12,
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
                          child: const Text('1413 posts',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Roboto',
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Row(
            children: const [],
          )
        ],
      ),
    );
  }
}
