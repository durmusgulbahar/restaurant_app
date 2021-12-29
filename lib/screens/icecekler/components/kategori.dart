import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  final String kat;
  final String path;
  final String route;

  Kategori(this.kat, this.path, this.route);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 6,
            child: Text(
              kat,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
              flex: 4,
              child: SizedBox(height: 45, width: 40, child: Image.asset(path))),
        ],
      ),
    );
  }
}
