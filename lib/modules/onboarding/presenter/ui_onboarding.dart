import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/second'),
          child: Text('Navigate to Second Page'),
        ),
      ),
    );
  }
}