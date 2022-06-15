import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../qus_bank/fractions.dart';

class FractionToDecimal extends StatefulWidget {
  const FractionToDecimal({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Fractions();
}

class _Fractions extends State<FractionToDecimal> {
  String qus = "Qus appears here";
  String ans = "Answer appears here";
  Fractions f = Fractions();

  @override
  changeText(String q) {
    setState(() {
      qus = q;
      ans = "";
    });
  }

  changeAnswer(String a) {
    setState(() {
      ans = a;
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
                    String a = f.checkAnswer(f.index);
                    changeAnswer(a);
                  },
                  child: Text("Show Answer")),
            ],
          ),
        ),
      ),
    );
  }
}
