import 'package:flutter/material.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/myWidget/Colors.dart';

class ResultDisplay extends StatelessWidget {
  final String inputText;
  final String resultText;

  const ResultDisplay({super.key, required
    this.inputText,
    required this.resultText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xffD3DEF6), width: 2),
        color: Color(0xffEBF1FD),
      ),
      alignment: Alignment.bottomRight,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Text(
                    inputText,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                      shadows: [
                        Shadow(
                          color: Color(0xffD3DEF6).withAlpha(200),
                          offset: Offset(2, 2),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Text(
                    resultText,
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                      shadows: [
                        Shadow(
                          color: Color(0xffD3DEF6).withAlpha(200),
                          offset: Offset(2, 2),
                          blurRadius: 20,
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
    );
  }
}
