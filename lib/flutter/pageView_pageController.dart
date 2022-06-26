import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

PageController pageController = PageController(initialPage: 0);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/img1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/img2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/img3.jpeg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Image.asset('assets/middle.jpeg'),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.black26),
                    ),
                    onPressed: () {},
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
