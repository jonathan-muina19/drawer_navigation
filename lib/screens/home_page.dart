import 'package:flutter/material.dart';

import '../main.dart';

// My Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Home', style: TextStyle(
            color: Colors.white
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
              fontSize: 20
          ),
        ),
      ),
    );
  }
}
