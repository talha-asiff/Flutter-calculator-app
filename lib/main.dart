import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String number = "";
int? n;
double? result;
int? currentOpr;
int? lastOpr;
double? calc() {
  final p = ShuntingYardParser();
  final exp = p.parse(number);
  final cm = ContextModel();

  double eval = exp.evaluate(EvaluationType.REAL, cm);
  return eval;
}
// void numShift(int opr) {

//   if(currentOpr == null){
//     currentOpr = opr;
//     print("opr : $currentOpr");
//   }
//   //currentOpr = opr;
//   print("opr : $currentOpr");
//   if(result == null){
//     result = n;
//     n = null;
//     print("result : $result");
//     print("n : $n");
//   }
//   if(n != null){
//     print("result : $result");
//   print("opr : $currentOpr");
//   print("n : $n");
//     if(currentOpr == 1){
//     result = result! + n!;
//   } else if(currentOpr == 2){
//     result = result! - n!;
//   } else if(currentOpr == 3){
//     result = result! * n!;
//   } else if(currentOpr == 4){
//     result = result! ~/ n!;
//   }
//   print("result : $result");
//   print("opr : $currentOpr");
//   print("n : $n");

//   lastOpr = currentOpr;
//   currentOpr = null;
//   }
//   if(opr == 0){
//     currentOpr = null;
//   }
// }

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  State<MainApp> createState() => homepage();
}

class homepage extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[50],
        body: Column(
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[50],
                  elevation: 20,
                  child: SizedBox(
                    width: 376,
                    height: 220,
                    child: Column(
                      children: [
                        Text(
                          "$number",
                          style: TextStyle(color: Colors.brown, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "${result ?? 0}",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      175,
                                      152,
                                      0,
                                    ),
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Icon(Icons.backspace_outlined),
                  onTap: () {
                    setState(() {
                      number = "";
                      result = null;
                      n = null;
                      currentOpr = null;
                    });
                  },
                ),
                SizedBox(width: 15),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "1";
                        n = (n ?? 0) * 10 + 1;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "2";
                        n = (n ?? 0) * 10 + 2;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "3";
                        n = (n ?? 0) * 10 + 3;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "+";
                        //numShift(1);
                        //n = null;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "+",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "4";
                        n = (n ?? 0) * 10 + 4;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "5";
                        n = (n ?? 0) * 10 + 5;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "6";
                        n = (n ?? 0) * 10 + 6;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "-";
                        //numShift(2);
                        //n = null;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "-",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "7";
                        n = (n ?? 0) * 10 + 7;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "7",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "8";
                        n = (n ?? 0) * 10 + 8;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "8",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "9";
                        n = (n ?? 0) * 10 + 9;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "9",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "*";
                        //numShift(3);
                        //n = null;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "x",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "0";
                        n = (n ?? 0) * 10 + 0;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 119, 121, 72),
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        //numShift(lastOpr!);
                        //n = null;
                        result = calc();
                      });
                    },
                    child: SizedBox(
                      width: 179,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "=",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow[200],
                  elevation: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        number = number + "/";
                        // numShift(4);
                        // n = null;
                      });
                    },
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "/",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
