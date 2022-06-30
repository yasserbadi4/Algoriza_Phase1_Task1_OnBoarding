import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  final String inputText;
  final VoidCallback function;

  //final double height;
  //final double width;

  MyMaterialButton({
    required this.inputText,
    required this.function,
    //required this.height,
    // required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          inputText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
