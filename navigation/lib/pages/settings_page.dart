// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Settings Page'),
        // for displaying the items on the bottom bar we use the bottom navigation widget
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'),

            
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Settings'),


            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile')
        ],
        ),
    );
  }
}