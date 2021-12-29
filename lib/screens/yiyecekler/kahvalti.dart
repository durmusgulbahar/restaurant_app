import 'package:flutter/material.dart';
import 'package:peterspan/components/top.dart';
import 'package:peterspan/constants/constants.dart';

class Kahvalti extends StatelessWidget {
  String routeName = '/kahvalti';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 20, child: Top("kahvaltı")),
            Expanded(
              flex: 8,
              child: Image.asset('assets/logo/peterlogo2.png'),
            ),
            //BURADAN AŞAĞISINI MENUYE GÖRE AYARLA
            Expanded(
              flex: 8,
              child: Text(
                "Şimdi Kahvalti Seç\nEşsiz Kahvalti tadına var",
                style: TextStyle(
                  fontFamily: 'Oswald',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                flex: 54,
                child: GridView.count(
                  childAspectRatio: 2,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: [
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer(),
                    urunContainer()
                  ],
                )),
            // Expanded(
            //     flex: 10,
            //     child: Image.asset(
            //       'assets/images/americano.jpg',
            //     )),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Text(
                    'Main text',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Oswald'),
                  ),
                  Text(
                    'Sub Text',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontFamily: 'Oswald'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell urunContainer() {
    return InkWell(
      onTap: () {
        print('TIKLANDI');
      },
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/images/kahvalti.jpg'),
              fit: BoxFit.cover),
        )),
        Text('Kahvalti'),
        Align(
          alignment: Alignment(-1.2, -1.2),
          child: Stack(alignment: Alignment.center, children: [
            Icon(
              Icons.circle,
              color: kPrimary,
              size: 32,
            ),
            Text(
              '10',
              style: TextStyle(color: Colors.black),
            )
          ]),
        ),
      ]),
    );
  }
}
