import 'package:flutter/material.dart';

class CalculatorUI extends StatefulWidget {
  CalculatorUI({Key key}) : super(key: key);

  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  final greyBlack = Colors.black.withOpacity(0.8);
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: greyBlack,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.20),
                  width: 5,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              padding: EdgeInsets.fromLTRB(15, 15, 10, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Deg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "44",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 30,
              children: <Widget>[
                calculatorButton('7'),
                calculatorButton('8'),
                calculatorButton('9'),
                calculatorButton('/'),
                calculatorButton('4'),
                calculatorButton('5'),
                calculatorButton('6'),
                calculatorButton('x'),
                calculatorButton('1'),
                calculatorButton('2'),
                calculatorButton('3'),
                calculatorButton('-'),
                calculatorButton('0'),
                calculatorButton('.'),
                calculatorButton('='),
                calculatorButton('+'),
              ],
            ),
          )
        ],
      ),
    );
  }

  calculatorButton(String button) {
    bool equalButton = button == '=';
    return RaisedButton(
      onPressed: () {
        setState(() {

        });
      },
      color: !equalButton ? Colors.black12 : Colors.red,
      splashColor: Colors.white30,
      child: Text(
        button,
        style: TextStyle(
            color: !equalButton? Colors.red : greyBlack, fontSize: 38, fontWeight: FontWeight.w400),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.black)),
    );
  }

}
