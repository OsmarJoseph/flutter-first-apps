import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/components/gender_icon.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:flutter/material.dart';

const bottomContainerColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  setSelectedGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GenderCard(
                  gender: Gender.male,
                  setSelectedGender: setSelectedGender,
                  isActive: selectedGender == Gender.male,
                ),
                GenderCard(
                  gender: Gender.female,
                  setSelectedGender: setSelectedGender,
                  isActive: selectedGender == Gender.female,
                ),
              ],
            ),
          ),
          const CustomCard(),
          Expanded(
            child: Row(
              children: const [
                CustomCard(),
                CustomCard(),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}
