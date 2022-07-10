import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (ctx) => PicProvider(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PicProvider>(context, listen: false);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Change the Color'),
        ),
        body: Consumer<PicProvider>(
          builder:(ctx, value, child)=> Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        'assets/img${provider.defaultValue}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    onPressed: () {
                      provider.next();
                    },
                    child: const Text('next pic'),
                  ),
                  FlatButton(
                    onPressed: () {
                      provider.last();
                    },
                    child: const Text('privious pic'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PicProvider extends ChangeNotifier {
  int _default = 2;
  int get defaultValue => _default;
  void next() {
    _default++;
    notifyListeners();
  }

  void last() {
    _default--;
    notifyListeners();
  }
}
