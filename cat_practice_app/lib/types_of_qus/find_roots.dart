import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../qus_bank/squares.dart';

class FindRoots extends StatefulWidget{
  const FindRoots({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_FindRoots();

}
class _FindRoots extends State<FindRoots>{
  String qus = "Qus appears here";
  String ans = "Answer appears here";
  Squares f=Squares();
  int givQus=0;
  @override
  changeText(int x) {
    setState(() {
      qus = x.toString();
      ans = "";
      givQus=x;
    });
  }

  changeAnswer() {
    setState(() {
      ans = (sqrt(givQus)).toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(
                  qus,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    changeText(f.getQusRev());
                  },
                  child: Text("Next qus")),
              const TextField(
                decoration: (InputDecoration(
                  hintText: "Enter your answer",
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(ans),
              ),
              ElevatedButton(
                  onPressed: () {
                    //String a = f.checkAnswer(f.index);
                    changeAnswer();
                  },
                  child: Text("Show Answer")),
            ],
          ),
        ),
      ),
    );
  }
}
