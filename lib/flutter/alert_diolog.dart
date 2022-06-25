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
                    title: const Text('Low Battery'),
                    content: const Text(
                      '20% battery remaining.',
                      style: TextStyle(color: Colors.black87),
                    ),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        width: 300,
                        height: 150,
                        child: ListView(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(bottom: 10),
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.normal),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Low Power Mode',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Close',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Low battery',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
