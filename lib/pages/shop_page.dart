import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(color: Colors.grey[200],borderRadius:BorderRadius.circular(8)),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Search',
        style:TestStyle(color:Colors.grey),),
        Icon(
          Icons.search,
          color:Colors.grey),
      ],
    ), // Row
  ), // Container
        // message
      
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
             'everyone flies.. some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),
             ), 
             ), 

        // hot picks
// hot picks
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const [
      Text(
        'Hot Picks 🔥',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ), // TextStyle
      ), // Text
      Text(
        'See all',
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          color: Colors.blue,
        ),
      ),
    ],
  ), 
),
const SizedBox(height: 10),

Expanded(
  child: ListView.builder(
    itemCount:4,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      // create a shoe
       Shoe shoe = Shoe(
        name: 'Air Jordan',
        price: '240',
        description: 'cool shoe',
         imagePath: 'lib/images/AirJordan.png',
); // Shoe

      return ShoeTile(
        shoe:shoe,
      );
    }, 
  ),
 )

      ],

    );
  }
}
