import 'package:flutter/material.dart';
import 'package:session1_online_sat/components/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static String routeName = "calculator";

  @override
  State<StatefulWidget> createState() {
    return CalculatorScreenState();
  }
}

class CalculatorScreenState extends State<CalculatorScreen> {
   String resultText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 18),
                      child: Text(
                        resultText,
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      )))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "7", onClick: onDigitClick),
                CalculatorButton(digit: "8",onClick: onDigitClick),
                CalculatorButton(digit: "9",onClick: onDigitClick),
                CalculatorButton(digit: "+",onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "4",onClick: onDigitClick),
                CalculatorButton(digit: "5",onClick: onDigitClick),
                CalculatorButton(digit: "6",onClick: onDigitClick),
                CalculatorButton(digit: "-",onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "1",onClick: onDigitClick),
                CalculatorButton(digit: "2",onClick: onDigitClick),
                CalculatorButton(digit: "3",onClick: onDigitClick),
                CalculatorButton(digit: "*",onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: ".",onClick: onDigitClick),
                CalculatorButton(digit: "0",onClick: onDigitClick),
                CalculatorButton(digit: "=",onClick: onEqualClick),
              CalculatorButton(digit: "/", onClick: onOperatorClick,),
              ],
            ),
          ),
        ],
      ),
    );
  }
  onEqualClick(){
    setState(() {
      resultText =calculate(double.parse(lhs), operator, double.parse(resultText));
      lhs = "";
      operator = "";
    });

  }

  onDigitClick(String digit){
    if (digit == "." && resultText.contains(".")){
      return;
    }
    setState((){
      resultText += digit;
    });
  }

  String operator = "";
  String lhs = "";

   onOperatorClick(String clickedOperator){
     if(operator.isEmpty){
       lhs = resultText;
       operator = clickedOperator;

     }else {
      lhs = calculate(double.parse(lhs), operator, double.parse(resultText));
      operator = clickedOperator;
     }
     setState(() {
       resultText ="";
     });
     print("lhs: $lhs, saved operator: $operator");
   }

   String calculate(double lhs, String operator, double rhs){
      if(operator == "+"){
        return (lhs + rhs).toString();
      }else if(operator == "-"){
        return (lhs - rhs).toString();
      } else if(operator == "*"){
        return (lhs * rhs).toString();
      }else{
        return (lhs / rhs).toString();
      }
   }
}
