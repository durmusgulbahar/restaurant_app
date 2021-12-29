import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

import 'top.dart';

class Sepet extends StatelessWidget {
  // YAZIM AŞAMASINDA
  final String routeName = "/sepet";
  const Sepet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              color: Colors.grey,
            ),
            label: 'TL',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Ödeme yap')
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Top('Sepet'),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Çay',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/logo/minus-sign.png',
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                  Text('1', style: TextStyle(color: Colors.black)),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/logo/plus.png',
                          width: 20,
                          height: 20,
                        )),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Americano',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/logo/minus-sign.png',
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ),
                        Text('1', style: TextStyle(color: Colors.black)),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/logo/plus.png',
                                width: 20,
                                height: 20,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
