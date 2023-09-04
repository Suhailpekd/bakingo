import 'package:bakingo/viewall.dart';
import 'package:flutter/material.dart';

class Catog extends StatefulWidget {
  const Catog({super.key});

  @override
  State<Catog> createState() => _CatogState();
}

class _CatogState extends State<Catog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall(),));},
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 240, top: 19, bottom: 6, left: 7),
                      child: Text("Categories",
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
                            title: Text("Cakes",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Backed With Love",
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
                            title: Text("By Flavour",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("As per your taste",
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
                              backgroundImage: AssetImage(
                                "asset/images/Screenshot 2023-08-19 144142.png",
                              ),
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                            title: Text("By type",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Choosen from 7+ catogories",
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
                            leading: Container(
                              child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 30,
                                  backgroundImage:
                                  AssetImage("asset/images/Screenshot 2023-08-19 141543.png")),
                            ),
                            title: Text("Desserts",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text("Mouth Washering items",
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
                                  radius: 30,backgroundImage: AssetImage("asset/images/photo_2023-08-18_23-30-10.jpg"),
                              ),
                              title: Text("Anniversery",
                                  style: TextStyle(fontWeight: FontWeight.w600)),
                              subtitle: Text("To honour the day of love",
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
                                  backgroundImage: AssetImage("asset/images/photo_2023-08-18_22-47-27.jpg",),
                                      ),
                              title: Text("Birthday",
                                  style: TextStyle(fontWeight: FontWeight.w600)),
                              subtitle: Text("irresisteble birthday cakes",
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
              ),

        ),
      ),
    );
  }
}
