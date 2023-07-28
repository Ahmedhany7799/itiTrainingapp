import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({ this.labelText ,this.onChanged});
  Function (String)?onChanged;
  String?labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,


        decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
        color: Color.fromRGBO(3, 96, 164, 1),
        fontSize: 25,
    ),
    border: OutlineInputBorder(),
    )
    );
  }
}
