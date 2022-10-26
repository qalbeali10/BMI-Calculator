// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({
    Key? key,
     this.icon, this.text,
  }) : super(key: key);
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xff8d8e98),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 20, color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}
