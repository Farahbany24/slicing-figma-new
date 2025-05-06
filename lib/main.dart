import 'package:flutter/material.dart';

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
  const IsiSlicing({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print('Ikon ditekan');
    }
    

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: onPressed,
          icon: Padding(
            padding: EdgeInsets.all(9),
            child: SizedBox(
              child: Image.asset(
                'assets/images/menu.png',
                height: 20,
                width: 20,
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
            fontVariations: [
              FontVariation('wght', 500),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: onPressed,
            constraints: BoxConstraints(),
            icon: Padding(
              padding: EdgeInsets.all(9),
              child: SizedBox(
                child: Image.asset(
                  'assets/images/search.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ], //actions
      ),
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Container(
                height: 343,
                width: 335,
                color: Colors.white,
                child: Image.asset(
                  'assets/images/Decor1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: onPressed,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFB8AF9E),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/left-arrow.png',
                          height: 31,
                          width: 31,
                          color: const Color(0xFF7A7469),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Material(
                  color: Colors.transparent,
                  child:InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: onPressed,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7A7469),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFF7A7469),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/right-arrow.png',
                        height: 31,
                        width: 31,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color(0xFFD9D9D9),
              width: 1,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
                    borderRadius:
                        BorderRadius.circular(18), // setengah dari height/width
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