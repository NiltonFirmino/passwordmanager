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
            Modular.to.navigate('/');
          });
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.teal,
                  Colors.red,
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/logo.json',
                    width: 200,
                    height: 200,
                  ),
                  const Text(
                    'SIMPLE BLINDS POKER',
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
