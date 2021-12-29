// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';
import 'package:peterspan/screens/icecekler/components/kategori.dart';

import '../../components/top.dart';

class Icecekler2 extends StatelessWidget {
  String routeName = '/icecekler2';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              color: kBackground,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Top("icecekler"),
                SizedBox(
                  height: 50,
                ),
                SizedBox(width: 200, child: Expanded(child: menuIc())),
              ],
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    height: 80,
                    width: 80,
                    child:
                        Image(image: AssetImage('assets/logo/peterLogo.png'))))
          ],
        ),
      ),
    );
  }

  Column menuIc() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Kategori('Sicak icecekler', 'assets/logo/sicak.png', '/urun_menu'),
        divider(),
        Kategori('Soft icecekler', 'assets/logo/soft.png', '/sicak_icecekler'),
        divider(),
        Kategori(
            'Milkshakeler', 'assets/logo/milkshake.png', '/sicak_icecekler'),
        divider(),
        Kategori('Kokteyller', 'assets/logo/kokteyl.png', '/sicak_icecekler'),
        divider(),
        Kategori('Soguk Kahveler', 'assets/logo/soguk.png', '/sicak_icecekler'),
        divider(),
        Kategori('Soguk Caylar ve Limonatalar', 'assets/logo/limonata.png',
            '/sicak_icecekler'),
        divider(),
      ],
    );
  }

  Divider divider() {
    return Divider(
      height: 1,
      color: kPrimary,
      endIndent: 150,
    );
  }

  ListTile tile(String k, String p) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        onTap: () {
          print('TAPPED');
        },
        title: Text(
          k,
          style: TextStyle(fontSize: 17),
        ),
        trailing: Image.asset(
          p,
          width: 70,
        ) //SizedBox(height: 45, width: 40, child: Image.asset(p)),
        );
  }
}

class arka_plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background/icecek.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
