import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: Container(
          child: GridView(
            padding: const EdgeInsets.all(10),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              ReusableCard(
                  'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_tables.jpg',
                  'Dining table',
                  '\$99'),
              ReusableCard(
                  'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_bedroom_sheets.jpg',
                  'Pillowcases',
                  '\$89'),
              ReusableCard(
                  'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_bedroom_memory_foam.jpg',
                  'Mattresses',
                  '\$229'),
              ReusableCard(
                  'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_bedroom_nightstands.jpg',
                  'Nightstands',
                  '\$99'),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_flatware.jpg',
                'Fatware',
                '\$28',
              ),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_bars.jpg',
                'Pubsets',
                '\$110',
              ),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_dinnerware.jpg',
                'Dinnerware',
                '\$55',
              ),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_pub_sets.jpg',
                'Bars',
                '\$77',
              ),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/shop_by_room_catg_dining_room_buffets.jpg',
                'Buffets',
                '\$150',
              ),
              ReusableCard(
                'https://ak1.ostkcdn.com/img/mxc/20180607barstools.jpg',
                'Bar Stools',
                '\$79',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String image;
  String headline;
  String price;
  ReusableCard(this.image, this.headline, this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
          right: 10,
        ),
        child: Column(
          children: [
            Image.network(image),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border),
                Text(
                  headline,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                IconButton(
                   icon: Icon(Icons.local_grocery_store),
                  onPressed: () {  },
                ),
              ],
            ),
            Text(price),
          ],
        ));
  }
}
