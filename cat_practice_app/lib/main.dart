import 'package:cat_practice_app/qus_bank/fractions.dart';
import 'package:cat_practice_app/types_of_qus/additionPractice.dart';
import 'package:cat_practice_app/types_of_qus/decimal_to_fractions.dart';
import 'package:cat_practice_app/types_of_qus/find_roots.dart';
import 'package:cat_practice_app/types_of_qus/fractions_to_decimal.dart';
import 'package:cat_practice_app/types_of_qus/square_roots.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const FractionToDecimal())),
                child: const Text("Fractions to decimals")),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const DecimalToFractions())),
                child: const Text("Decimals to Fraction")),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SquareRoots())),
                child: const Text("Square ")),
            // Left out
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const FindRoots())),
                child: const Text("Square root")),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const AdditionTable())),
                child: const Text("Addition Practice")),
          ],
        ),
      ),
    );
  }
}
