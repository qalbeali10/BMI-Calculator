// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/widgets.dart';

class ReUsabelCard extends StatelessWidget {
  ReUsabelCard({required this.colour,this.cardChild});
  final Color? colour;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(15),
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
