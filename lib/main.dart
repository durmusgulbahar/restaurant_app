import 'package:flutter/material.dart';
import 'package:peterspan/services/route_generator.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, fontFamily: 'LeckerliOne'),
      ),
      initialRoute: '/giris', //değişecek burası
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
