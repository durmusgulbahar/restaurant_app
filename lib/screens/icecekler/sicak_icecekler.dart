import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:peterspan/components/top.dart';
import 'package:peterspan/constants/constants.dart';
import 'package:peterspan/models/urunler.dart';
import 'package:peterspan/screens/icecekler/components/sicaklar.dart';

class Sicak_icecekler extends StatelessWidget {
  String routeName = '/sicak_icecekler';

  var icecekList = [
    Sicaklar('assets/images/cay.jpg', 'Çay', 'Çay', 10),
    Sicaklar('assets/images/sut.jpg', 'Sıcak Süt', 'Süt', 15),
    Sicaklar('assets/images/americano.jpg', 'Americano', 'Americano', 10),
    Sicaklar('assets/images/filtre.jpg', 'Filtre Kahve', 'Filtre Kahve', 10),
    Sicaklar('assets/images/sale.jpg', 'Salep', 'Salep', 10),
    Sicaklar('assets/images/sıcak_cikolata.jpg', 'Sıcak Çikolata',
        'Sıcak Çikolata', 10),
    Sicaklar(
        'assets/images/turk-kahvesi.jpg', 'Türk Kahvesi', 'Türk Kahvesi', 10),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackground,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Top('Sicaklar'),
              Expanded(
                  flex: 15,
                  child: Container(
                    margin: EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: Stack(children: [
                        Text(
                          'Sipariş etmek istediğiniz içeceğinizi seçiniz...',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontFamily: 'Oswald'),
                        ),
                      ]),
                    ),
                  )),
              Expanded(
                flex: 85,
                child: Scrollbar(
                  child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    itemCount: icecekList.length,
                    itemBuilder: (context, index) {
                      return icecekList[index];
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: kPrimary,
                        indent: 140,
                        endIndent: 15,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
