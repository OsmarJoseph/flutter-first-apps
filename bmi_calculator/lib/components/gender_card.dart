import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/components/gender_icon.dart';
import 'package:flutter/material.dart';

const activeColor = Color(0XFF1D1E33);
const inactiveColor = Color(0XFF111328);

class GenderCard extends StatelessWidget {
  final Gender gender;
  final bool isActive;
  final void Function(Gender gender) setSelectedGender;
  const GenderCard(
      {Key? key,
      required this.isActive,
      required this.gender,
      required this.setSelectedGender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => setSelectedGender(gender),
        child: CustomCard(
          child: GenderIcon(gender: gender),
          color: isActive ? activeColor : inactiveColor,
        ),
      ),
    );
  }
}
