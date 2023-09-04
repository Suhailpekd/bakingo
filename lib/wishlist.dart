import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wish extends StatefulWidget {
  const Wish({super.key});

  @override
  State<Wish> createState() => _WishState();
}

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 240, top: 19, bottom: 6, left: 7),
                child: Text("Wishlist",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20)),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, bottom: 14, top: 14),
                child: Card(
                  elevation: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: ListTile(
                      leading: Container(
                        width: 55,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Image.asset(
                              "asset/images/Screenshot 2023-08-19 144157.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      title: Text("Choclate Birthday Cake",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Text("Backed With Love",
                          style: TextStyle(color: Colors.grey[500])),
                      trailing: Icon(
                        Icons.heart_broken_rounded,
                        color: Colors.red,

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 14),
                child: Card(
                  elevation: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Image.asset("asset/images/Screenshot 2023-08-19 144119.png")),
                      title: Text("RED WAll",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Text("As per your taste",
                          style: TextStyle(color: Colors.grey[500])),
                      trailing:Icon(Icons.heart_broken_rounded,color: Colors.red,)

                      ),
                    ),
                  ),
                ),





            ],
          ),

        ),
      ),
    );
  }
}
