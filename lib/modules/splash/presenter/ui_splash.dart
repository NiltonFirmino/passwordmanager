import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Builder(builder: (context) {
          Future.delayed(const Duration(seconds: 4)).then((_) {
            Modular.to.navigate('/onboard');
          });
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,            
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/logo.json',
                    width: 250,
                    height: 250,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
