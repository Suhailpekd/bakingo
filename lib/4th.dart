import 'package:bakingo/navigationbar.dart';
import 'package:flutter/material.dart';

import 'home2nd.dart';

class Proj4 extends StatefulWidget {
  const Proj4({super.key});

  @override
  State<Proj4> createState() => _Proj4State();
}

class _Proj4State extends State<Proj4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 400,color: Colors.white,child: Image.asset("asset/images/photo_2023-08-26_14-46-24.jpg",fit: BoxFit.fitHeight,),
              ),
              SizedBox(height:57,),
              Center(child: Text(("Sweet Credits"),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800, ),)),
              SizedBox(height: 15,)
              ,
              Center(child: Text(("instant Wallet checkout with sweet"),style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: Colors.grey ),)),
              Center(child: Text(("credits and rewards"),style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: Colors.grey ),)),

              SizedBox(height: 49,),
              Center(
                child: InkWell(onTap:(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navig(),));} ,
                  child: Container(
                    height: 49,
                    width: 259,
                    decoration: BoxDecoration(color: Color(0xFFff605d,),borderRadius: BorderRadius.circular(34)
                    ),
                    child: Center(child: Text("GET STARTED",style: TextStyle(color: Colors.white,fontSize: 19))),),
                ),
              ),
              Padding(//skip button
                padding: const EdgeInsets.only(top: 14),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Navig(),));
                }, child: Text("Skip",style: TextStyle(color: Color(0xFF919191,),fontSize: 15),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:34,left: 146),
                child: Row(
                  children: [
                    Container(height: 7,width: 30,
                      decoration:BoxDecoration(color: Color(0xFFf70200,)
                          ,borderRadius: BorderRadius.all(Radius.circular(15))) ,
                    ),Padding(
                      padding: const EdgeInsets.only(left: 4,right: 4),
                      child: Container(height: 7,width: 7,
                        decoration:BoxDecoration(color: Color(0xFFff605d,)
                            ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                      ),
                    ),
                    Container(height: 7,width: 7,
                      decoration:BoxDecoration(color: Color(0xFFff605d,)
                          ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                    ),Padding(
                      padding: const EdgeInsets.only(right: 4,left: 4),
                      child: Container(height: 7,width: 7,
                        decoration:BoxDecoration(color: Color(0xFFff605d,)
                            ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
