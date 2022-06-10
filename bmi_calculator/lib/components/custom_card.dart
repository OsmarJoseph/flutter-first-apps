import 'package:flutter/material.dart';

const activeColor = Color(0XFF1D1E33);

class CustomCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  const CustomCard({Key? key, this.color = activeColor, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
