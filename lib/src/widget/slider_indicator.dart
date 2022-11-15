import 'package:flujo/src/widget/responsive.dart';
import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  const SlideIndicator({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 20.h() : 15.h(),
      width: isActive ? 20.w() : 15.w(),
      decoration: BoxDecoration(
        color: isActive ? Colors.transparent : Colors.grey,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: isActive ? Colors.green : Colors.grey
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}