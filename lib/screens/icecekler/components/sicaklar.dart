import 'package:flutter/material.dart';
import 'package:peterspan/constants/constants.dart';

class Sicaklar extends StatelessWidget {
  String routeName = '/sicaklar';
  String photo;
  int ucret;
  String isim;
  String aciklama;

  Sicaklar(this.photo, this.isim, this.aciklama, this.ucret);

  @override
  Widget build(BuildContext context) {
    return sicak();
  }

  ListTile sicak() {
    return ListTile(
      leading: Image.asset(
        photo,
        height: 60,
        width: 50,
      ),
      title: Text(
        isim,
      ),
      subtitle: Text(
        aciklama,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ucret.toString(),
          ),
          Image.asset(
            'assets/logo/turkish-lira.png',
            height: 20,
            width: 20,
            color: Colors.white,
          ),
          FloatingActionButton.small(
            backgroundColor: kPrimary,
            onPressed: () {
              print('eklendi');
            },
            child: Icon(
              Icons.add,
              color: kBackground,
            ),
          )
        ],
      ),
    );
  }
}
