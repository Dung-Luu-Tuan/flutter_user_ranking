import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/list_image_screen.dart';
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
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListImageScreen()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: const Text("7",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Image.asset(
                  'assets/images/category/${isPost ? lists[0].avatar : lists2[0].avatar}',
                  width: 50,
                  height: 50,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0, left: 0),
                        child: Text(isPost ? lists[0].name : lists2[0].name,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: const Text('1414 posts',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                color: Colors.white)),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(right: 40),
                child: SvgPicture.asset(
                  'assets/images/icon/arrow-right.svg',
                  color: Colors.grey[200],
                  width: 20,
                  height: 20,
                ),
              )
            ],
          ),
        ));
  }
}
