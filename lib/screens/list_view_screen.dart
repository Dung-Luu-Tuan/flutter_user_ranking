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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: PageView(
        children: <Widget>[
          makePage(
            page: 1,
            image: 'vietnam1',
            title: "Ninh Binh",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          ),
          makePage(
            page: 2,
            image: 'vietnam2',
            title: "Ninh Binh",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          ),
          makePage(
            page: 3,
            image: 'vietnam3',
            title: "Ninh Binh",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          )
        ],
      ),
    );
  }

  Widget makePage({image, title, page, description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/icon/$image.jpg'),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.2)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "/3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        const Text(
                          "5.0",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                          color: Colors.white54, height: 2.0, fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
