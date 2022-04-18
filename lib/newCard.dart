import 'package:flutter/material.dart';

import 'main.dart';

class newCard extends StatelessWidget {
  final data datas;

  newCard({Key key, this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [

          Expanded(
            child: Icon(datas.icon,size: 40,),
          ),
          Text(datas.title,style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
