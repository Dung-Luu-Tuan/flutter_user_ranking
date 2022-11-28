import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.s, required this.detail});

  final String s;
  final String detail;

  final String japan =
      'Japan, island country lying off the east coast of Asia. It consists of a great string of islands in a northeast-southwest arc that stretches for approximately 1,500 miles (2,400 km) through the western North Pacific Ocean. Nearly the entire land area is taken up by the country’s four main islands; from north to south these are Hokkaido (Hokkaidō), Honshu (Honshū), Shikoku, and Kyushu (Kyūshū). Honshu is the largest of the four, followed in size by Hokkaido, Kyushu, and Shikoku.';
  final String vietnam =
      'Vietnam is a long, narrow nation shaped like the letter s. It is in Southeast Asia on the eastern edge of the peninsula known as Indochina. Its neighbors include China to the north and Laos and Cambodia to the west. The South China Sea lies to the east and south. The mountains of the Annam Cordillera rise over most of the western side of Vietnam, while a thousand-mile (1,600-kilometer) coastline dominates the east.';

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle style =
    //     ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 50));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Image.asset(
                'assets/images/category/${detail == 'VIETNAM' ? 'category icon-34.png' : 'category icon-18.png'}',
                width: 200,
                height: 200,
              ),
            ),
            Expanded(
                flex: 0,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(detail == 'VIETNAM' ? vietnam : japan,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          color: Colors.black)),
                ))
          ],
        ),
      ),
    );
  }
}
