import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../qus_bank/fractions.dart';

class DecimalToFractions extends StatefulWidget {
  const DecimalToFractions({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DecimalToFraction();
}

class _DecimalToFraction extends State<DecimalToFractions> {
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
                    String a = f.checkAnsRev(f.index);
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

