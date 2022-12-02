import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pinch_zoom_release_unzoom/pinch_zoom_release_unzoom.dart';

class ListImageScreen extends StatelessWidget {
  const ListImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("Demo App"),
      ),
      body: const Stacked(),
    );
  }
}

class Stacked extends StatefulWidget {
  const Stacked({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StackedState createState() => _StackedState();
}

class _StackedState extends State<Stacked> {
  final List<String> images = [
    "vietnam1.jpg",
    "vietnam1.jpg",
    "vietnam2.jpg",
    "vietnam3.jpg",
    // "vietnam4.jpg",
    // "vietnam5.jpg",
    // "vietnam6.jpg",
    // "vietnam7.jpg",
    // "vietnam8.jpg",
    // "vietnam9.jpg",
    // "vietnam10.jpg",
    // "vietnam1.jpg",
    // "vietnam2.jpg",
    // "vietnam3.jpg",
    // "vietnam4.jpg",
    // "vietnam5.jpg",
    // "vietnam6.jpg",
    // "vietnam7.jpg",
    // "vietnam8.jpg",
    // "vietnam9.jpg",
    // "vietnam10.jpg",
    // "vietnam11.jpg",
  ];

  bool _showPreview = false;
  late Image image = Image.asset(
    "assets/images/icon/vietnam1}",
    fit: BoxFit.cover,
    width: 350,
    height: 350,
  );

  @override
  void didChangeDependencies() {
    precacheImage(image.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  image = Image.asset(
                    "assets/images/icon/${images[index]}",
                    fit: BoxFit.cover,
                    width: 350,
                    height: 350,
                  );
                  _showPreview = true;
                });
              },
              child: Image.asset(
                "assets/images/icon/${images[index]}",
                fit: BoxFit.cover,
                cacheHeight: 500,
                cacheWidth: 500,
              ),
            );
          },
        ),
        if (_showPreview) ...[
          InkWell(
            onTap: () {
              setState(() {
                _showPreview = false;
              });
            },
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: PinchZoomReleaseUnzoomWidget(
                  child: image,
                )),
          ),
        ],
      ],
    ));
  }
}
