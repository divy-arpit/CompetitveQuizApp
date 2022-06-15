import 'package:cat_practice_app/qus_bank/squares.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareRoots extends StatefulWidget{
  const SquareRoots({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_SquareRoots();

}
class _SquareRoots extends State<SquareRoots>{
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
      ans = (givQus*givQus).toString();
    });
  }
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
                    changeText(f.getQus());
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
