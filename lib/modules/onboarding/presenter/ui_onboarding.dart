import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnBoarding extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('OnBoarding')),
      body: Center(child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/second'),
          child: Text('Register'),
        ),
      ),
    );
  }
}