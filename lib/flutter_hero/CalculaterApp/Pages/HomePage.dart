import 'package:flutter/material.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/myWidget/Colors.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/myWidget/MyButton.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/myWidget/result_display.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorHomeScreen extends StatefulWidget {
  const CalculatorHomeScreen({super.key});

  @override
  State<CalculatorHomeScreen> createState() => _CalculatorHomeScreenState();
}

class _CalculatorHomeScreenState extends State<CalculatorHomeScreen> {

  String input = "";
  String result = "";

  void inputHandle(String userInput) {
    const operators = ["+", "-", "*", "/"];

    if (userInput == "AC") {
      setState(() {
        input = "";
        result = "";
      });
    } else if (userInput == "=") {
      try {
        Parser p = Parser();
        Expression exp = p.parse(input.replaceAll("x", "*"));
        ContextModel cm = ContextModel();
        setState(() {
          result = exp.evaluate(EvaluationType.REAL, cm).toString();
          // ".0" hataane ke liye
          if (result.endsWith(".0")) {
            result = result.substring(0, result.length - 2);
          }
        });
      } catch (e) {
        setState(() {
          result = "Error";
        });
      }
    } else {
      // Prevent multiple operators
      if (input.isNotEmpty &&
          operators.contains(input[input.length - 1]) &&
          operators.contains(userInput)) {
        return; // ignore second operator
      }

      setState(() {
        input += userInput;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR"),
        backgroundColor:AppColors.orangeColor,
        centerTitle:true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Column(
           children: [
             SizedBox(height: 10,),
             ResultDisplay(inputText: input, resultText: result,),
           ],
         ),
            SizedBox(height: 20,),
           Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(btnText: 'AC',
                     onTap: () {inputHandle("AC"); 
                     },
                   ),
                   MyButton(
                     btnText: '⌫',
                     isFunBtn: true,
                     onTap: () {
                       if(input.isNotEmpty) {
                         setState(() {
                           input = input.substring(0, input.length -1);
                         });
                       }
                     },
                   ),
                   MyButton(
                     btnText: '%',
                     onTap: () {
                       inputHandle("%");
                     },
                   ),
                   MyButton(
                     btnText: '/',
                     isFunBtn: true,
                     onTap: () {
                       inputHandle("/");

                     },
                   ),
                 ],
               ),
               SizedBox(height:20 ,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(
                     btnText: '7',
                     onTap: () {
                       inputHandle("7");
                     },
                   ),
                   MyButton(
                     btnText: '8',
                     onTap: () {
                       inputHandle("8");
                     },
                   ),
                   MyButton(
                     btnText: '9',
                     onTap: () {
                       inputHandle("9");
                     },
                   ),
                   MyButton(btnText: 'X', isFunBtn: true,
                     onTap: () {
                     inputHandle("x");
                   },),

                 ],
               ),
               SizedBox(height:20 ,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(
                     btnText: '4',
                     onTap: () {
                       inputHandle("4");
                     },
                   ),
                   MyButton(
                     btnText: '5',
                     onTap: () {
                       inputHandle("5");
                     },
                   ),
                   MyButton(
                     btnText: '6',
                     onTap: () {
                       inputHandle("6");
                     },
                   ),
                   MyButton(btnText: '-',
                     isFunBtn: true,
                     onTap: () {
                     inputHandle("-");
                     },),

                 ],
               ),
               SizedBox(height:20 ,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(
                     btnText: '1',
                     onTap: () {
                       inputHandle("1");
                     },
                   ),
                   MyButton(
                     btnText: '2',
                     onTap: () {
                       inputHandle("2");
                     },
                   ),
                   MyButton(
                     btnText: '3',
                     onTap: () {
                       inputHandle("3");
                     },
                   ),
                   MyButton(btnText: '+',
                     isFunBtn: true,
                     onTap: () {
                     inputHandle("+");
                     },),

                 ],
               ),
               SizedBox(height:20 ,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(
                     btnText: '0',
                     onTap: () {
                       inputHandle("0");
                     },
                   ),
                   MyButton(
                     btnText: ',',
                     onTap: () {
                       inputHandle(",");
                     },
                   ),
                   MyButton(btnText: '=',isFunBtn: true,
                     isEqualBtn: true,
                     onTap: () {
                     inputHandle("=");
                     },),
                 ],
               ),
               SizedBox(height: 20,)
             ],
           )
          ],
        ),
      ),
    );
  }
}
