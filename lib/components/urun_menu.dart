import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

import 'top.dart';
import 'pop_up.dart';

class urun_Menu extends StatelessWidget {
  final String routeName = 'urun_menu';
  String title = "icecekler";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 20, child: Top(title)),
            Expanded(
              flex: 8,
              child: Image.asset('assets/logo/peterlogo2.png'),
            ),
            //BURADAN AŞAĞISINI MENUYE GÖRE AYARLA
            const Expanded(
              flex: 8,
              child: Text(
                "Şimdi İçeceğini Seç\nEşsiz içeceklerin tadına var",
                style: TextStyle(
                  fontFamily: 'Oswald',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                flex: 54,
                child: GridView.count(
                  childAspectRatio: 1.5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        const Text('Çay'),
                        Align(
                          alignment: const Alignment(-1.2, -1.2),
                          child: Stack(
                              alignment: Alignment.center,
                              children: const [
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
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: const AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        const Text('Çay'),
                        Align(
                          alignment: const Alignment(-1.2, -1.2),
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
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        Text('Çay'),
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
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        Text('Çay'),
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
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        Text('Çay'),
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
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => PopUp(
                                'assets/images/cay.jpg', 'çay', 'çay', '5'));
                      },
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/cay.jpg'),
                              fit: BoxFit.cover),
                        )),
                        Text('Çay'),
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
                    ),
                  ],
                )),
            Divider(
              height: 50,
            )
            // Expanded(
            //     flex: 10,
            //     child: Image.asset(
            //       'assets/images/americano.jpg',
            //     )),
          ],
        ),
      ),
    );
  }

  InkWell urunContainer() {
    //ürünlerin tutulduğu gridview elementleri
    return InkWell(
      onTap: () {
        print("eklendi");
      },
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/americano.jpg'),
              fit: BoxFit.cover),
        )),
        Text('Americano'),
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
