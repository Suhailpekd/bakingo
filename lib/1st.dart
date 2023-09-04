import 'dart:ffi';

import 'package:bakingo/2nd.dart';
import 'package:bakingo/home2nd.dart';
import 'package:flutter/material.dart';

import 'navigationbar.dart';

class Proj1 extends StatefulWidget {
  const Proj1({super.key});

  @override
  State<Proj1> createState() => _Proj1State();
}

class _Proj1State extends State<Proj1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [Container(height: 140,width: 200,
          decoration:BoxDecoration(color: Color(0xFFe2d7ca)
              ,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0),bottomRight: Radius.circular(1000) )) ,
        ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 95),
                  child: Container(width: 280,height: 190,
                      child: Image.asset("asset/images/logo.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15,top: 17,right: 40,left: 40),
                child: Text("bakingo",style: TextStyle(color: Color(0xFFf80301,),fontSize: 75,fontFamily: AutofillHints.transactionCurrency,fontWeight: FontWeight.w900,)
                ),
              ),
              Text("we back love into delicios cakes",style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.only(bottom: 19,top: 15),
                child: Container(
                  height: 2,
                  width: 120,
                  color: Color(0xFF919191)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: Text(("Cake    |   Bake   |    Love"),style: TextStyle(color:Color(0xFF919191),fontSize:20 ,fontWeight: FontWeight.w400 ),),
              )
              , Padding(
                padding: const EdgeInsets.only(),
                child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Proj2(),));} ,
                  child: Container(
                      height: 49,
                      width: 259,
                      decoration: BoxDecoration(color: Color(0xFFff605d,),borderRadius: BorderRadius.circular(34)
                      ),
                  child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 19))),),
                ),
              ),
              Padding(//skip button
                padding: const EdgeInsets.only(top: 33),
                child: TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navig(),));
                }, child: Text("Skip",style: TextStyle(color: Color(0xFF919191,),fontSize: 15),)),
              )
            ],
          ),
          Stack(
              children: [Padding(
                padding: const EdgeInsets.only(top: 720,left: 240),
                child: Container(height: 90,width: 130,
                  decoration:BoxDecoration(color: Color(0xFFe2d7ca)
                      ,borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft: Radius.circular(1000) )) ,
                ),
              ),]),
          Padding(
            padding: const EdgeInsets.only(top: 782,left: 150),
            child: Stack(
                children: [Row(
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
                ),]),
          ),
          
        ] ),



    );
  }
}

