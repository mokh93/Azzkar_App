//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customebutton extends StatelessWidget {
  const Customebutton({
    super.key,
    required this.height, 
    required this.width, 
    required this.fontsize, 
    required this.text, 
    required this.onPressed,
  });

  final double height;
  final double width;
  final double fontsize;
  final String text;
  final void Function() onPressed;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: Container(  
        height: height,
        width: width,
         decoration:  BoxDecoration(
             border: Border.all(color: Colors.grey.shade800,width: 5),
             color :const Color(0xffD5CEA3),
             shape: BoxShape.circle,
             boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
                offset: Offset(0, 8),
             ),]
         ),  
        child:  Center(child:  Text(text,style: TextStyle(color: const Color(0xff1A120B),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: fontsize,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}