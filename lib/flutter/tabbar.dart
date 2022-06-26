

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}
void initState(){
}
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook'),
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_alt_outlined,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_library_outlined,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_none,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          ReusableTab('Home Page'),
          ReusableTab('Groups'),
          ReusableTab('Profile'),
          ReusableTab('Video contents'),
          ReusableTab('Notifications'),
          ReusableTab('Settings vs menu'),
        ],
      )
    );
  }
}

class ReusableTab extends StatelessWidget {
String text;
ReusableTab(this.text);
  @override
  Widget build(BuildContext context) {
    return  TabBarView(
      children: [
        Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
