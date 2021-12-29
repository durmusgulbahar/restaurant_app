import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

class Giris extends StatelessWidget {
  final String routeName = 'giris';

  const Giris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 30), () {
      Navigator.pushNamed(context, '/menu');
    });
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background/giris.jpg'),
                  fit: BoxFit.cover)),
        ),
        const CircularProgressIndicator(
          color: kPrimary,
          backgroundColor: Colors.black,
          strokeWidth: 5,
        )
      ]),
    );
  }
}
