import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slicing Figma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: IsiSlicing(),
    );
  }
}

class IsiSlicing extends StatelessWidget {
  IsiSlicing({super.key});

  final List<String> imagePaths = const [
    'assets/images/Decor1.jpg',
    'assets/images/Decor2.jpg',
    'assets/images/Decor3.jpg',
  ];

  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print('Search icon tapped');
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 49,
        leading: IconButton(
          onPressed: onPressed,
          icon: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              child: Image.asset(
                'assets/images/menu.png',
                height: 17,
                width: 17,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'HouseMate',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontVariations: [FontVariation('wght', 500)],
          ),
        ),
        actions: [
          IconButton(
            onPressed: onPressed,
            
            icon: Padding(
              padding: const EdgeInsets.only(right: 9),
              child: SizedBox(
                child: Image.asset(
                  'assets/images/search.png',
                  height: 18,
                  width: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            CarouselSlider(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 343,
                enlargeCenterPage: true,
                viewportFraction: 0.95,
                enableInfiniteScroll: true,
              ),
              items: imagePaths.map((path) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                    width: 335,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => buttonCarouselController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color(0xFF7A7469), width: 1.5),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/left-arrow.png',
                      height: 24,
                      width: 24,
                      color: const Color(0xFF707070),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                SizedBox(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => buttonCarouselController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7A7469),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/right-arrow.png',
                      height: 24,
                      width: 24,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color(0xFFD9D9D9),
              width: 1,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPressed,
                padding: EdgeInsets.zero,
                icon: Image.asset(
                  'assets/images/house.png',
                  height: 19,
                  width: 19,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                padding: EdgeInsets.zero,
                icon: Image.asset(
                  'assets/images/search.png',
                  height: 23,
                  width: 23,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                padding: EdgeInsets.zero,
                icon: Image.asset(
                  'assets/images/shopping-cart.png',
                  height: 24,
                  width: 24,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                padding: EdgeInsets.zero,
                icon: Image.asset(
                  'assets/images/settings.png',
                  height: 22,
                  width: 22,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                padding: EdgeInsets.zero,
                icon: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      'assets/images/pinkselle.jpeg',
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
