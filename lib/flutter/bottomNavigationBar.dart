
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomePage()));

int navigationIndex = 0;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinkedIn'),
      ),
      body: navigationItemScreen[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: (newIndex) {
          setState(() {
            navigationIndex = newIndex;
          });
        },
        currentIndex: navigationIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'My Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outlined),
            label: 'Jobs',
          ),
        ],
      ),
    );
  }
}

final navigationItemScreen = [
  const Center(
    child: Text(
      'home',
      style: TextStyle(fontSize: 30),
    ),
  ),
  const Center(
    child: Text(
      'My Network',
      style: TextStyle(fontSize: 30),
    ),
  ),
  const Center(
    child: Text(
      'Post',
      style: TextStyle(fontSize: 30),
    ),
  ),
  const Center(
    child: Text(
      'Notifications',
      style: TextStyle(fontSize: 30),
    ),
  ),
  const Center(
    child: Text(
      'Jobs',
      style: TextStyle(fontSize: 30),
    ),
  ),
];
