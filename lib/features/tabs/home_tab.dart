import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<String> images = [
    'images/car_1.webp',
  'images/car_1.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 160,
                width : MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 19, 33, 42),
                child:CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    aspectRatio: 1 / 1.2,
                  ),
                  items: images.map((String imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          width: MediaQuery.of(context).size.width,
                          imagePath,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 150,
                margin: const EdgeInsets.only(top: 18),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Films.length,
                  itemBuilder: (context, index) {
                    final item = Films[index];
                    return InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,

                      child: Container(
                        child: Column(
                          children: [
                            Container(

                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: Image.asset(item['image']),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 15),

                margin: const EdgeInsets.only(top: 18),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Films.length,
                  itemBuilder: (context, index) {
                    final item = Films[index];
                    return InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,

                      child: Container(
                        child: Column(
                          children: [
                            Container(

                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: Image.asset(item['image'],fit: BoxFit.cover,),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> Films = [
  {
    'title': 'Prime original',
    'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'

  },
  {
    'title': 'gta',
    'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'

  },
  {
    'title': 'tintin',
    'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'

  },
  {
    'title': 'prirate',
    'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'

  },
  {
    'title': 'naruto',
    'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'

  },
  {'title': 'show time', 'image': 'images/image.jpg',  'date': '1920',
    'time':'2h55min',
    'price': '55 euro'
  },
];
