import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        color: Colors.green,
        child: Text(
          'Successfully came to home page!',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
