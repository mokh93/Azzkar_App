

import 'package:flutter/material.dart';

import '../widgets/customebutton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter =0;
  String content= "أستغفر الله";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: const Text("تطبيق أذكار",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 28),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            setState(() {
              Navigator.pushNamed(context, '/info');
            });
          }, icon: const Icon(Icons.info_outlined)),
          PopupMenuButton<String>(
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onSelected: (String value) {
              if(content != value){
                setState(() {
                  content=value;
                  counter=0;
                });
              }
            },
            itemBuilder: (context){
            return[
            const  PopupMenuItem(value: "أستغفر الله",child: Text("أستغفر الله",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.w400),),),
            const  PopupMenuItem(value: "الحمد لله",child: Text("الحمد لله",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.w400),),),
            const  PopupMenuItem(value: "سبحان الله",child: Text("سبحان الله",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.w400),),),
            const  PopupMenuItem(value: "الله أكبر",child: Text("الله أكبر",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.w400),),),
            const  PopupMenuItem(value: "لا اله الا الله",child: Text("لا اله الا الله",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.w400),),),
            ];
          },),
        ],
      ),
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
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            const Spacer(),
             Text("المسـبحـــــــــــة",style: TextStyle(color: Colors.grey.shade400,fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 40,fontWeight: FontWeight.w700),),
             Text("Masbaha",style: TextStyle(color: Colors.grey.shade400,fontFamily: "Yaseer" ,fontStyle: FontStyle.normal,fontSize: 40,fontWeight: FontWeight.w700),),
            const SizedBox(height: 20,),
            const Divider( indent: 20, endIndent: 20,  color: Color.fromARGB(255, 255, 255, 255),),            
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(30),
              height: 120,
              width: 330,
              
              decoration:  BoxDecoration(
                color: const Color.fromARGB(33, 255, 255, 255),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded( flex: 3 ,child:  Center(child: Text(content,style: const TextStyle(color: Colors.white,fontSize: 35,fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontWeight: FontWeight.w700),))),
                  Expanded(
                    child: Container(
                      height: 120,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(117, 229, 229, 203),
                      ),
                      child:  Center(child:  Text(counter.toString(),style: const TextStyle(color: Colors.white,fontSize: 40,fontFamily: "Yaseer",fontStyle: FontStyle.normal,fontWeight: FontWeight.w700),)),
                    ),
                  ),
                 ],
              ),
            ),
            const Divider( indent: 20, endIndent: 20, height: 20, color: Color.fromARGB(255, 255, 255, 255),),
            const SizedBox(height: 30,),
            Customebutton(height: 150, width: 150, fontsize: 40, text: "سَبِّح", onPressed: () { setState(() {
              ++counter;
            }); }, ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 130, 0),
              child: Customebutton(height: 70, width: 70, fontsize: 30, text: "اعادة", onPressed: (){ setState(() {
                counter =0;
              });}),
            ),
            const Spacer(),
            const Text("by | Mohammed Khaled",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Yaseer"),),
          ],
          
        ),
      )
    );
  }
}

