import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

const labelTextStyle = TextStyle(fontSize: 18, color: Color(0XFF8D8E98));

class GenderIcon extends StatelessWidget {
  final Gender gender;
  const GenderIcon({Key? key, required this.gender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender == Gender.male
              ? FontAwesomeIcons.mars
              : FontAwesomeIcons.venus,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          gender.name.toString().toUpperCase(),
          style: labelTextStyle,
        ),
      ],
    );
  }
}
