import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.blue,
        title: Text('My Profile'),

      ),
    );
  }
}