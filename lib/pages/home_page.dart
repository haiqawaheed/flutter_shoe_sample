import 'package:flutter/material.dart';
import 'package:flutter_shoe_store/pages/shop_page.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Selected index to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
       appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Builder(
      builder: (context) => IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ), 
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ), 
    ), 
  ), 
  drawer: Drawer(
    backgroundColor: Colors.grey[900],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // logo
      Column(
        children: [DrawerHeader(
        child: Image.asset(
          'lib/images/nike.png',
          color: Colors.white,
        ), 
      ),
      
      Padding(
        padding: EdgeInsets.symmetric(horizontal:25.0),
        child: Divider(
          color:Colors.grey[800],
        ),
      ),
      // other pages
      Padding(
        padding: EdgeInsets.only(left:25.0),
        child: ListTile(
          leading: Icon(Icons.home,
          color:Colors.white),
          title: Text('Home',
          style: TextStyle(color:Colors.white)
          ),
          ),
        ),
      
      Padding(
        padding: EdgeInsets.only(left:25.0),
        child: ListTile(
          leading: Icon(Icons.info,
          color:Colors.white),
          title: Text('About',
          style: TextStyle(color:Colors.white)
          ),
          ),
        ),],
      ),
      
      Padding(
        padding: EdgeInsets.only(left:25.0,bottom:25),
        child: ListTile(
          leading: Icon(
            Icons.logout,
          color:Colors.white),
          title: Text('Logout',
          style: TextStyle(color:Colors.white)
          ),
          ),
        ),
      
    ],
  ),

  ),
      body: _pages[_selectedIndex],
  );
  }
}
