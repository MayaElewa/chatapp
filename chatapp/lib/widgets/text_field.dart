import 'package:flutter/material.dart';

class TextFieldcustom extends StatelessWidget {
  TextFieldcustom({this.hintText, this.obscureText = false, this.onchanged});

  //{super.key, this.hintText, this.obscureText=false, this.showbutton});

  String? hintText;
  bool? obscureText;
  Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText!,
        onChanged: onchanged,
        decoration: InputDecoration(
            hintText: hintText ?? 'Enter text',
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 222, 220, 228),
            ),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2,
                ))));
  }
}
