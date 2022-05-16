import 'dart:math';

import 'package:flutter/material.dart';

import 'main.dart';

class newCard extends StatelessWidget {
  final data datas;

  newCard({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      margin: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Icon(
                datas.icon,
                size: 40,
              ),
            ),
            Text(
              datas.title,
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
