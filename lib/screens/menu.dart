import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

class Menu extends StatelessWidget {
  final String routeName = '/menu';

  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(alignment: Alignment.center, children: [
      Container(
        constraints: BoxConstraints.expand(),
        color: kBackground,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/schnitzel');
                      },
                      child: Image.asset(
                        'assets/logo/schnitzel.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/burger');
                      },
                      child: Image.asset(
                        'assets/logo/burger.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/salatalar');
                      },
                      child: Image.asset(
                        'assets/logo/salata.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/kahvalti');
                      },
                      child: Image.asset(
                        'assets/logo/kahvalti.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/tatli');
                      },
                      child: Image.asset(
                        'assets/logo/tatli.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/icecekler2');
                      },
                      child: Image.asset(
                        'assets/logo/icecek.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'assets/logo/peterMenu.png',
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Image.asset(
                      'assets/logo/peterYarim.png',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ])));
  }
}
