import 'package:flutter/material.dart';
import 'package:peterspan/components/sepet.dart';

import 'package:peterspan/screens/giris.dart';

import 'package:peterspan/components/urun_menu.dart';
import 'package:peterspan/screens/icecekler/icecekler.dart';
import 'package:peterspan/screens/icecekler/icecekler2.dart';
import 'package:peterspan/screens/icecekler/sicak_icecekler.dart';
import 'package:peterspan/screens/menu.dart';
import 'package:peterspan/screens/yiyecekler/burger.dart';
import 'package:peterspan/screens/yiyecekler/kahvalti.dart';
import 'package:peterspan/screens/yiyecekler/salatalar.dart';
import 'package:peterspan/screens/yiyecekler/schnitzel.dart';
import 'package:peterspan/screens/yiyecekler/tatli.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments; PARAMETRE YOLLARKEN KULLANICAN BUNU

    switch (settings.name) {
      case '/icecekler2':
        //return MaterialPageRoute(builder: (_) => Icecekler());
        return pageRoute(Icecekler2());
      case '/urun_menu':
        //return MaterialPageRoute(builder: (_) => Icecekler());
        return pageRoute(urun_Menu());
      case '/sicak_icecekler':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Sicak_icecekler());
      case '/menu':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(const Menu());
      case '/icecekler':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Icecekler());
      case '/giris':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(const Giris());
      case '/salatalar':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Salatalar());
      case '/burger':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Burger());
      case '/schnitzel':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Schnitzel());
      case '/kahvalti':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Kahvalti());
      case '/tatli':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Tatli());
      case '/sepet':
        //return MaterialPageRoute(builder: (_) => Sicak_icecekler());
        return pageRoute(Sepet());
      default:
        return _errorRoute();
    }
  }

  static PageRouteBuilder<dynamic> pageRoute(var route) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => route,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ERROR'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
