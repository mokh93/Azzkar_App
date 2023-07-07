
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: const Text("تطبيق أذكار",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 28),),
        centerTitle: true,
      ),
      body: Container(
        
        padding: const EdgeInsets.fromLTRB(30, 200, 30, 150),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.centerRight,
            colors: [
            Color(0xff1A120B),
            Color(0xff3C2A21),
            
            Color(0xffD5CEA3),
          ])
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("أذكـــــــــار",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 50,fontWeight: FontWeight.w700),),
                    Text("Azzkar",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 50,fontWeight: FontWeight.w700),),
                  ],
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 140,
                  width: 140 ,
                  child: const Image(image: AssetImage('images/noun-praying-beads-4455883 (1).png')),
                  ),
                  
              ],
            ),
            const SizedBox(height: 100,),
            const Text("تطبيق اذكار هو تطبيق للتسبيح عبر الهاتف",style: TextStyle(color: Colors.white,fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 20,),),
            const SizedBox(height: 70,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Developed by | Mohammed Khaled",style: TextStyle(color: Colors.white,fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 20,),),
                Icon(Icons.copyright,color: Colors.white,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}