import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
        child: Text('Go to settings page'),
        onPressed: () {
          Navigator.pushNamed(context, '/settingspage');
        }, 
        ),
        
      ),
    );
  }
}