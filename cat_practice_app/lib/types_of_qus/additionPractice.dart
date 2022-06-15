import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdditionTable extends StatefulWidget {
  const AdditionTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdditinoTable();
}

class _AdditinoTable extends State<AdditionTable> {
  var min = 11;
  var max = 100;
  var ColMap = Map();
  var RowMap = Map();

  _AdditinoTable() {
    List<int> list = [];
    for (int i = 0; i < 10; i++) {
      Random random = Random();
      var randomNumber4 = min + random.nextInt(max - min);
      list.add(randomNumber4);
    }
    list.sort();
    for (int i = 0; i < 10; i++) {
      ColMap[i + 1] = list[i];
    }
    List<int> list1 = [];
    for (int i = 0; i < 10; i++) {
      Random random = Random();
      var randomNumber4 = min + random.nextInt(max - min);
      list1.add(randomNumber4);
    }
    list1.sort();
    for (int i = 0; i < 10; i++) {
      RowMap[i + 1] = list1[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return Scaffold(
        body: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Table(
                border: TableBorder.all(color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text(
                        ColMap[0].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[1].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[2].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[3].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[4].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[5].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[6].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[7].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[8].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[9].toString(),
                      )
                    ]),
                    Column(children: [
                      Text(
                        ColMap[10].toString(),
                      )
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[1].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[2].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[3].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[4].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[5].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[6].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(
                        RowMap[7].toString(),
                      )
                    ]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                    Column(children: [TextField()]),
                  ]),

                ],
              ),
            )));
  }
}
