import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

class PopUp extends StatelessWidget {
  String photo;
  String title;
  String aciklama;
  String fiyat;

  PopUp(this.photo, this.title, this.aciklama, this.fiyat);

  @override
  Widget build(BuildContext context) {
    return popUp(photo, title, aciklama, fiyat);
  }

  Widget popUp(String photo, String title, String aciklama, String fiyat) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: kPrimary,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image.asset(
                    photo,
                    width: 100,
                    height: 100,
                  )),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          aciklama,
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(fiyat,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black)),
                            Image.asset(
                              'assets/logo/turkish-lira.png',
                              width: 20,
                              height: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: -20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2)),
                child: TextButton(
                  onPressed: () {
                    print("Sepete eklendii");
                  },
                  child: Text(
                    'Sepete ekle..',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
