import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: AlertDialog(),
    );
  }
}

class AlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show alert Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
                Icons.battery_alert,
                color: Colors.red,
                size: 90,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => CupertinoAlertDialog(
                    title: Text('Low Battery'),
                    content: Text(
                      '20% battery remaining.',
                      style: TextStyle(color: Colors.black87),
                    ),
                    actions: [
                      Container(
                        padding: EdgeInsets.all(30),
                        width: 300,
                        height: 150,
                        child: ListView(children: [
                          Container(
                            child: Text(
                              'Low Power Mode',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.normal),
                            ),
                            width: double.infinity,
                            height: 20,
                          ),
                          Divider(
                            height: 10, color: Colors.black38,
                            endIndent: 40.0,
                            thickness: 2,
                          ),
                          Container(
                            child: DefaultTextStyle(
                              child: Text(
                                'Close',
                              ),
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            padding: EdgeInsets.all(6),
                          ),
                        ],),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Low battery',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
