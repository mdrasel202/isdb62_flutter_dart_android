import 'package:flutter/material.dart';
import 'package:flutter_basics/profile_page.dart';

import 'contact_page.dart';

class First_Page extends StatefulWidget {
  const First_Page ({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _page = [
    ProfilePage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title:Center(
          child:  Text("First Page"),
         ),
         backgroundColor: Colors.green[200],
         elevation:  0,
         // leading: Icon(Icons.menu),
         actions: [
           IconButton(
               onPressed: (){},
               icon: Icon(Icons.logout),
           ),
         ],
       ),
      drawer: Drawer(
        backgroundColor: Colors.green[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(
              Icons.favorite,
              size: 40,
            ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E "),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
              onTap: (){
                Navigator.pushNamed(context, '/settingpage');
              },
            )
          ],
        ),
      ),
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            //home
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency),
                label: 'Contact',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
            )
          ],
      ),
    );
  }
}
