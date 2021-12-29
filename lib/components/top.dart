import 'package:flutter/material.dart';
import 'package:peterspan/components/sepet.dart';
import 'package:peterspan/constants/constants.dart';
import 'package:path/path.dart';

class Top extends StatelessWidget {
  final String title;

  // ignore: use_key_in_widget_constructors
  const Top(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        top(),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sepet');
                },
                icon: Image.asset(
                  'assets/logo/restaurant.png',
                  color: Colors.white,
                  height: 40,
                  width: 40,
                )),
          ],
        ),
      ],
    );
  }

  Stack top() {
    return Stack(alignment: Alignment(0, -0.5), children: [
      const Image(
        image: AssetImage('assets/logo/top.png'),
        width: 250,
      ),
      Align(
        alignment: const Alignment(0, -0.4),
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
    ]);
  }
}
