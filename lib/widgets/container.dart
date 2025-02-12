import 'package:flutter/material.dart';

class containerBtn extends StatelessWidget {
  final Color bgColor;
  final Color TxtColor;
  final Color borderClr;
  final VoidCallback onPres;
  final double borderRadius;
  final String txt;
  const containerBtn(
      {required this.TxtColor,
      required this.bgColor,
      required this.borderRadius,
      required this.onPres,
      required this.txt,
      required this.borderClr});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPres,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderClr),
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: TxtColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
