import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/onboard'),
          child: Text('Back to Onboarding'),
        ),
      ),
    );
  }
}