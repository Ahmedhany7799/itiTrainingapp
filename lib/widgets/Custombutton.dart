import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  Custombutton({super.key,this.text, this.onTap });
  String?text;
  VoidCallback? onTap;
  final _formfield = GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,


      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(3, 96, 164,1),
          borderRadius: BorderRadius.circular(12.0),
        ),
        width: double.infinity,
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              text!,
              style: TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
