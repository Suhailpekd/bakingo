import 'package:bakingo/addressbook.dart';
import 'package:bakingo/home2nd.dart';
import 'package:bakingo/login.dart';
import 'package:bakingo/register.dart';
import 'package:bakingo/reviews.dart';
import 'package:bakingo/wishlist.dart';
import 'package:flutter/material.dart';

import 'myorders.dart';

class Prof extends StatefulWidget {
  const Prof({super.key});

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 240, top: 19, bottom: 6, left: 7),
                    child: Text("Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    height: 100,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 30)),
                          Text("please login/Register ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black54)),
                          Text("to continue ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black54)),
                        ],
                      ),
                    ),
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
                        child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Wish(),));




                          } ,
                          child: ListTile(
                            leading: Container(
                              width: 55,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Image.asset(
                                "asset/images/S0.png",
                                fit: BoxFit.cover,
                              )),
                            ),
                            title: Text("Wish List",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Taste Your Favoriets",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 14),
                    child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Myorders(),));} ,
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
                                child: Image.asset("asset/images/S1.png")),
                            title: Text("My Orders",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Manage and track your all orders",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
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
                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Address()));},

                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                "asset/images/S2.png",
                              ),
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                            title: Text("Address Book",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Modify and review new addressess",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 14),
                    child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review(),));},
                      child: Card(
                        elevation: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: ListTile(
                            leading: Container(
                              child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("asset/images/S3.png")),
                            ),
                            title: Text("My Reviews",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Submit review with images",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
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
                      child: InkWell(onTap: (){Uri.dataFromString("tel: 9567972330");},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 30,
                                child: Image.asset("asset/images/S4.png")),
                            title: Text("Costemer Service",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("available in 24 hours",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 14),
                    child: InkWell(onTap: (){Uri.parse("message");},
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
                                child: Center(
                                    child: Image.asset(
                                  "asset/images/S5.png",
                                  fit: BoxFit.cover,
                                ))),
                            title: Text("Chats",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Support At your finger tips",
                                style: TextStyle(color: Colors.grey[500])),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 156.0, top: 90),
                child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));},
                  child: Container(
                    height: 53,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(
                          0xFFff605d,
                        ),
                        borderRadius: BorderRadius.circular(34)),
                    child: Center(
                        child: Text("LOGIN /REGISTER",
                            style: TextStyle(color: Colors.white, fontSize: 16))),
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
