import 'package:flutter/material.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/myWidget/Colors.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final  bool isFunBtn;
  final bool isEqualBtn;
  final VoidCallback onTap;
  const MyButton({super.key,
    required this.btnText,
    this.isFunBtn=false,
    this.isEqualBtn = false,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        padding: EdgeInsets.all(15),
         width: isEqualBtn ? 175 : 80,
        height: 80,
        decoration: BoxDecoration(
            color: isFunBtn ? AppColors.orangeColor :AppColors.btnBgColor,
            borderRadius: BorderRadius.circular(25)

        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: isFunBtn?AppColors.secondary : AppColors.primary,
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
    );
  }
}
