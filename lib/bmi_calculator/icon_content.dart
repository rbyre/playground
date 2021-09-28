import 'package:flutter/material.dart';

const customCardInactiveText = Color(0XFF8D8E98);
const labelTextStyle = TextStyle(fontSize: 18, color: customCardInactiveText);

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContent({required this.label, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: customCardInactiveText,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
