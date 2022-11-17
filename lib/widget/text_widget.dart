import 'package:covid_app/const/const_style.dart';
import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  const AppText({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.fontStyle,
    );
  }
}
