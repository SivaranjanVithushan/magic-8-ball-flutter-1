import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(child: Text('Aks Me Anything')),
            backgroundColor: Colors.indigo,
          ),
          body: Magic(),
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int nextNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                child: Image.asset('images/ball$nextNumber.png'),
                onPressed: () {
                  setState(() {
                    nextNumber = Random().nextInt(4) + 1;
                  });
                },
          ),),
        ],
      ),
    );
  }
}
