import 'package:flutter/material.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 270,top: 19,bottom: 6),
              child: Text("Basket",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
            ),
            Expanded(
              child: Container(
                width: double.infinity,height: double.infinity,color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80,left: 12,right: 12),
                  child: Center(
                    child: Container(height: 430,
                      child: Card(elevation: 7,
                        child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),height: 300,
child: Padding(
  padding: const EdgeInsets.only(top: 30),
  child:   Column(

    children: [

          Center(



        child:   Container(width: 220,



          child: Image.asset("asset/images/photo_2023-08-20_15-54-22.jpg"),



        ),



      ),

      Padding(

        padding: const EdgeInsets.only(bottom: 23),

        child: Text("Your Cart Is Empty",style: TextStyle(fontSize: 17,color: Colors.black)),

      ),

    Text("Looks like you havn'nt made",style: TextStyle(color: Colors.grey[500])),

      Padding(

        padding: const EdgeInsets.only(bottom: 40),

        child: Text("any choice yet",style: TextStyle(color: Colors.grey[500])),

      ),

      Container(

        height: 48,

        width: 239,

        decoration: BoxDecoration(color: Color(0xFFff605d,),borderRadius: BorderRadius.circular(7)

        ),

        child: Center(child: Text("Back to home",style: TextStyle(color: Colors.white,fontSize: 19))),),

    ],),
),
                          ),
                        ),
                    ),
                  ),
                ),
                ),
              ),

          ],
        ),
      ),

    );
  }
}
