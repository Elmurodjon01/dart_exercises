import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Splash(),
    ));


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/splash.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

PageController pageController = PageController(initialPage: 0);
int pageOrder = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (pageindex) {
                    setState(() {
                      pageOrder = pageindex;
                    });
                  },
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
                child: pageOrder == 2
                    ? Container(
                        child: TextButton(
                          child: const Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          },
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()));
                            },
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (dotIndex) {
                                return Container(
                                  margin: const EdgeInsets.all(5),
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: pageOrder == dotIndex
                                        ? Colors.blueAccent
                                        : const Color(0xffcff1fb),
                                  ),
                                );
                              },
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              pageController.animateToPage(pageOrder++,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            },
                            child: const Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome to main page'),
      ),
      body: const Center(
        child: Text(
          'Hanpass',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
