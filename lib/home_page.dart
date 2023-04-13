
import 'package:apple_shop2/phone_detail_page.dart';
import 'package:apple_shop2/profile_page.dart';
import 'package:apple_shop2/settings_page.dart';
import 'package:flutter/material.dart';

import 'about_page.dart';
import 'cart_page.dart';
import 'components/google_bar.dart';
import 'login_page.dart';
import 'notification_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      bottomNavigationBar: GoogleBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 20,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12),
              child:  Icon(Icons.menu, color: Colors.black),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children: [
            Column(
              children: [
                   DrawerHeader(
              child: Image.asset(
                'images/apple6.png',
                color: Colors.yellow.shade900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                },
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  'User',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
                },
                
              ),
            ),
              Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
                },
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.app_settings_alt_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Technicial Specifications',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PhoneDetail(),
                  ),
                );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: Text(
                  'Notification and Theme Settings',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
                },
              ),
            ),
            
              Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
                },
              ),
            ),
              ],
            ),
         
              Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
                 onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
                },
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
