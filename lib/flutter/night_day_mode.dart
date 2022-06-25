import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

bool boolIcon = false;
IconData iconDarkMode = Icons.lightbulb_outline;
IconData iconLightMode = Icons.lightbulb;

ThemeData lightTheme =
    ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light);
ThemeData darkTheme = ThemeData(
//  primarySwatch: Colors.black54,
    brightness: Brightness.dark);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: boolIcon ? lightTheme : darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Night and Day'),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(boolIcon ? iconDarkMode : iconLightMode),
            onPressed: () {
              setState(() {
                boolIcon = !boolIcon;
              });
            },
          ),
        ),
      ),
    );
  }
}
