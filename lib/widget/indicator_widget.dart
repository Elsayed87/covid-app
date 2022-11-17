import 'package:flutter/material.dart';

class IndicatorLoading extends StatelessWidget {
  const IndicatorLoading({super.key,required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: color,
    ));
  }
}
