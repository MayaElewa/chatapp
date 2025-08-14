import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({required this.title})  ;

 String title;
  //{super.key, this.hintText, this.obscureText=false, this.showbutton});
//VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 50,
      child: const Center(
          child: Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}
