

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
       Navigator.pushReplacementNamed(context, '/home');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xffE5E5CB),
              Color(0xffD5CEA3),
              Color(0xff3C2A21),
             Color(0xff1A120B),
             
          ])
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             const Text("أذكـــــــــار",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 60,fontWeight: FontWeight.w700),),
             const Text("Azzkar",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 60,fontWeight: FontWeight.w700),),
             Container(
                  height: 140,
                  width: 140 ,
                  child: const Image(image: AssetImage('images/noun-praying-beads-4455883 (1).png')),
                  ),
          ],
        ),
      ),
    );
  }
}