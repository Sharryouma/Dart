// import 'package:first_app/pages/second_page.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to my site'),
        elevation: 0,
        backgroundColor: Colors.blue,
        
      ),
      // drawer is used to also display the side menu and automatically comes with the menu button by default
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // to place a common drawer header
            DrawerHeader(child: Icon(Icons.favorite,
            size: 50,)),
            // use flutter unbuilt list tile
      // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
              onTap: () {
                // for poping the drawer first and when going back the drawer disappers
                Navigator.pop(context);
                // navigate to the home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('SETTINGS'),
              onTap: () {
                // navigate to settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),

        
      ),

      
     
      body: Center(
        child: ElevatedButton(
         child: Text('Go to second page'),
         onPressed: () {
          //  to navigate to the second page we use navigator
      //  Navigator.push(context, 
      //  MaterialPageRoute(builder:(context) => SecondPage(),
      //  ),
      //  );
      // we can also navigate using routers which is more clean and simple
      Navigator.pushNamed(context, '/homepage');
         },
        //  to navigate to the second page we use navigator
       
        
      ),
    ),
    );
  }
}