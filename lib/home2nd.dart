import 'package:bakingo/navigationbar.dart';
import 'package:bakingo/reviews.dart';
import 'package:bakingo/selectcity.dart';
import 'package:bakingo/viewall.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bbb="select your cicty ";
  Map<String,dynamic> sample ={"place":""};
  Future<dynamic> select() async {
    final shared = await SharedPreferences.getInstance();
    setState(() {
      bbb="select your cicty ";
       bbb=shared.getString("name")!;
       sample ={"place":bbb};

    });

return sample;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future:select(),
          builder: (context,snapshot) {
            if(snapshot.hasData){
              return Stack(
                  children: [ListView(children: [
                    Stack(children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.white,
                                  Color(0xFFffebec),
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 21),
                              child: Stack(children: [
                                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => City(),));},
                                  child: Column(children: [



                                    // searching box in home screen

                                    //top delivery selected place
                                  ]),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),

                      //SLIDING CARD CONTAINER 1 STARTING

                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            height: 140,
                            child: ListView(scrollDirection: Axis.horizontal, children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 112),
                                        child: Center(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                      "asset/images/logo2.png" //sliding cakes card image
                                                  ))),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.grey),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.black, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),

                              // sliding card container 2 starting

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 112),
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                    child: Image.asset(
                                                        "asset/images/logo3.png" //sliding cakes card image
                                                    ))),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Color(0xFF141821)),
                                      ),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.white, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.white, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),

                              // sliding card container 3 starting

                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 10),
                                child: Stack(
                                  children: [
                                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 112),
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                    child: Image.asset(
                                                        "asset/images/logo2.png" //sliding cakes card image
                                                    ))),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.black, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 15),
                      child: Row(
                        children: [
                          Container(
                            width: 43,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.pinkAccent),
                            child: Center(
                                child: Text(
                                  "1/3",
                                  style: TextStyle(color: Colors.white, fontSize: 9),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 9,
                              height: 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90, top: 20, bottom: 17),
                      child: Text(
                        "Experience Flavours",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/logo4.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/logo5.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Honey mixed",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Honey Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //cake cards first row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/Screenshot_2023-08-18_115817-removebg-preview.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/Screenshot_2023-08-18_115914-removebg-preview.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 29, bottom: 12), //view more button
                      child: Center(
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 140,
                            height: 45,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Center(
                                    child: Text("View More ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Center(
                          child: Text("Popular Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //1rd card starting right scrolling after view more
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/lok.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//2nd card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153819.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
////////
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153845.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//3rd card starting

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153921.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //4th card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 154203.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),

                    ////view all button                                        //
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 130,
                            height: 49,
                            child: Center(
                              child: Text("View All",
                                  style: TextStyle(color: Colors.red, fontSize: 15)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.pink.shade50),
                          ),
                        ),
                      ),
                    ),

                    //photo caves heading starts

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Center(
                          child: Text("Photo Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //photo cakes scrolling
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-40.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//2nd card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-35.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
////////
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-33.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//3rd card starting

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-27.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //4th card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-21.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),

                    ////view all button                                        //
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 130,
                            height: 49,
                            child: Center(
                              child: Text("View All",
                                  style: TextStyle(color: Colors.red, fontSize: 15)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.pink.shade50),
                          ),
                        ),
                      ),
                    ),

                    //Trending Cakes  starts

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Center(
                          child: Text("Trending Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //////////

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-02.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Half Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-05.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Pinata Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-29-44.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Bomb Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-07.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Pull Me Up Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-10.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text(" Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-13.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Cartoon Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //Looking For Something Else"

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 40),
                      child: Center(
                          child: Text("Looking For Something Else",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600))),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 141543.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text("Cup Cakes",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Column(
                                children: [
                                  InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                    child: SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 144142.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Pastries",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 144157.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text("Brownies",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Center(
                                        child: Image.asset(
                                          "asset/images/Screenshot 2023-08-19 144214.png",
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Hampers",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Center(
                                        child: Image.asset(
                                          "asset/images/Screenshot 2023-08-19 144119.png",
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Jar Cakes",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 10, top: 40, left: 15, right: 15),
                      child: Center(
                          child: Text("What Our Costomers Say About us!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600))),
                    ),

                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                    },child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Center(
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white,
                                      ),
                                      width: 330,
                                      height: 140,
                                      child:Stack(
                                        children: [
                                          Column(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.only(top: 64),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Text("The  Cake was delivared very well.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                      Text("Tasted Awsome........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                            ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 32),
                                                child: Text("The  Cake was delivared reall,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                            },child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Center(
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white,
                                      ),
                                      width: 330,
                                      height: 140,
                                      child:Stack(
                                        children: [
                                          Column(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.only(top: 64),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Text("The  Cake was delivared very well.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                      Text("Tasted Awsome........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                            ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 32),
                                                child: Text("Nicely decorated and on time,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                            ),
                            InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                            },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child:  Center(
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                        ),
                                        width: 330,
                                        height: 140,
                                        child:Stack(
                                          children: [
                                            Column(
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.only(top: 64),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text("flowers and packaging was ok.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                        Text("cake was a absolute deight........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                              ),

                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 32),
                                                  child: Text("Flowers and packaging wa,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
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
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 150,bottom: 24),
                      child: Row(
                        children: [
                          Container(height: 5,width: 27,
                            decoration:BoxDecoration(color: Color(0xFFf70200,)
                                ,borderRadius: BorderRadius.all(Radius.circular(15))) ,
                          ),Padding(
                            padding: const EdgeInsets.only(left: 4,right: 4),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                          Container(height: 5,width: 5,
                            decoration:BoxDecoration(color: Color(0xFFff605d,)
                                ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4,left: 4),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4,),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset("asset/images/photo_2023-08-19_15-35-00.jpg"),
                    )
                  ]),


                    //stacked text field form search
                    Padding(
                      padding: const EdgeInsets.only(top:0),
                      child: Container(height: 220,width: 360,decoration: BoxDecoration(gradient: LinearGradient(colors: [
                        Colors.white,
                        Color(0xFFffebec),
                      ]),),
                        child: Column(
                          children: [ Padding(
                            padding: const EdgeInsets.only(left: 7,top: 45),
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => City(),));},

                              //////
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap:(){ select();},
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                    child: Text(("Deliver To "),
                                        style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(right: 230,bottom: 30),
                              child: Text(snapshot.data['place']),
                            ),
                            Container(
                                height: 55,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 1.6,
                                        strokeAlign: 1),
                                    borderRadius:
                                    BorderRadius.circular(13)), //search box
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 4, top: 27, left: 20, right: 50),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search for Cakes ,deserts",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),

                  ] );
            }
            else{
              return Stack(
                  children: [ListView(children: [
                    Stack(children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.white,
                                  Color(0xFFffebec),
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 21),
                              child: Stack(children: [
                                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => City(),));},
                                  child: Column(children: [



                                    // searching box in home screen

                                    //top delivery selected place
                                  ]),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),

                      //SLIDING CARD CONTAINER 1 STARTING

                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            height: 140,
                            child: ListView(scrollDirection: Axis.horizontal, children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 112),
                                        child: Center(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                      "asset/images/logo2.png" //sliding cakes card image
                                                  ))),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.grey),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.black, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),

                              // sliding card container 2 starting

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 112),
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                    child: Image.asset(
                                                        "asset/images/logo3.png" //sliding cakes card image
                                                    ))),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Color(0xFF141821)),
                                      ),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.white, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.white, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),

                              // sliding card container 3 starting

                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 10),
                                child: Stack(
                                  children: [
                                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 112),
                                          child: Center(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                    child: Image.asset(
                                                        "asset/images/logo2.png" //sliding cakes card image
                                                    ))),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Column(//column inside card container
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, left: 6),
                                            child: Text("Art of Fine",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 23)),
                                          ),
                                          Text("Baking",
                                              style:
                                              TextStyle(color: Colors.black, fontSize: 23)),
                                          Container(
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFfc5c5e),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text("BUY NOW",
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 9)),
                                            ),
                                          ),
                                        ]) //column closing inside card container
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 15),
                      child: Row(
                        children: [
                          Container(
                            width: 43,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.pinkAccent),
                            child: Center(
                                child: Text(
                                  "1/3",
                                  style: TextStyle(color: Colors.white, fontSize: 9),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 9,
                              height: 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90, top: 20, bottom: 17),
                      child: Text(
                        "Experience Flavours",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/logo4.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/logo5.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Honey mixed",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Honey Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //cake cards first row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/Screenshot_2023-08-18_115817-removebg-preview.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 155,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white60, width: .7, strokeAlign: .8)),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          child: Image.asset(
                                            "asset/images/Screenshot_2023-08-18_115914-removebg-preview.png",
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Choclate",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 19)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 7),
                                        child: Text("For Choco Adicts",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 29, bottom: 12), //view more button
                      child: Center(
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 140,
                            height: 45,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Center(
                                    child: Text("View More ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Center(
                          child: Text("Popular Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //1rd card starting right scrolling after view more
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/lok.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//2nd card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153819.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
////////
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153845.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//3rd card starting

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 153921.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //4th card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/Screenshot 2023-08-18 154203.png",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),

                    ////view all button                                        //
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 130,
                            height: 49,
                            child: Center(
                              child: Text("View All",
                                  style: TextStyle(color: Colors.red, fontSize: 15)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.pink.shade50),
                          ),
                        ),
                      ),
                    ),

                    //photo caves heading starts

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Center(
                          child: Text("Photo Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //photo cakes scrolling
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-40.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//2nd card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-35.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
////////
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-33.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//3rd card starting

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-27.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //4th card starting
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 260,
                                width: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white60, width: .7, strokeAlign: .8)),
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17)),
                                            height: 160,
                                            width: 200,
                                            child: Image.asset(
                                              "asset/images/photo_2023-08-18_22-47-21.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text("Round Choclate Truffle Cake",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 19)),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee_outlined),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Text("549",
                                                  style: TextStyle(
                                                      color: Colors.black, fontSize: 19)),
                                            ),
                                            Icon(Icons.currency_rupee_outlined,
                                                color: Colors.grey),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 7),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text("599",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3),
                                              child: Center(
                                                child: Container(
                                                  width: 35,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text("9%OFF",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 9)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[200],
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),

                    ////view all button                                        //
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                          child: Container(
                            width: 130,
                            height: 49,
                            child: Center(
                              child: Text("View All",
                                  style: TextStyle(color: Colors.red, fontSize: 15)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.pink.shade50),
                          ),
                        ),
                      ),
                    ),

                    //Trending Cakes  starts

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Center(
                          child: Text("Trending Cakes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600))),
                    ),

                    //////////

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-02.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Half Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-05.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Pinata Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-29-44.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Bomb Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-07.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Pull Me Up Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-10.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text(" Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                child: Card(
                                    elevation: 10,
                                    child: Container(
                                        height: 150,
                                        width: 125,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.white60,
                                                width: .7,
                                                strokeAlign: .8)),
                                        child: Center(
                                          child: Container(
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(17)),
                                                    height: 100,
                                                    width: 130,
                                                    child: Image.asset(
                                                      "asset/images/photo_2023-08-18_23-30-13.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, top: 10),
                                                child: Center(
                                                    child: Text("Cartoon Cakes",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400))),
                                              ),
                                            ]),
                                          ),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //Looking For Something Else"

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 40),
                      child: Center(
                          child: Text("Looking For Something Else",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600))),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 141543.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text("Cup Cakes",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Column(
                                children: [
                                  InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                                    child: SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 144142.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Pastries",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/Screenshot 2023-08-19 144157.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text("Brownies",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Center(
                                        child: Image.asset(
                                          "asset/images/Screenshot 2023-08-19 144214.png",
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Hampers",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Viewall()));},
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Center(
                                        child: Image.asset(
                                          "asset/images/Screenshot 2023-08-19 144119.png",
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text("Jar Cakes",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 10, top: 40, left: 15, right: 15),
                      child: Center(
                          child: Text("What Our Costomers Say About us!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600))),
                    ),

                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                    },child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Center(
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white,
                                      ),
                                      width: 330,
                                      height: 140,
                                      child:Stack(
                                        children: [
                                          Column(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.only(top: 64),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Text("The  Cake was delivared very well.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                      Text("Tasted Awsome........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                            ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 32),
                                                child: Text("The  Cake was delivared reall,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                            },child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Center(
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white,
                                      ),
                                      width: 330,
                                      height: 140,
                                      child:Stack(
                                        children: [
                                          Column(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.only(top: 64),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Text("The  Cake was delivared very well.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                      Text("Tasted Awsome........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                            ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 32),
                                                child: Text("Nicely decorated and on time,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                            ),
                            InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                            },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child:  Center(
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                        ),
                                        width: 330,
                                        height: 140,
                                        child:Stack(
                                          children: [
                                            Column(
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.only(top: 64),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text("flowers and packaging was ok.....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                                        Text("cake was a absolute deight........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('"',style: TextStyle(color: Colors.red,fontSize: 75)),
                                              ),

                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 32),
                                                  child: Text("Flowers and packaging wa,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
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
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 150,bottom: 24),
                      child: Row(
                        children: [
                          Container(height: 5,width: 27,
                            decoration:BoxDecoration(color: Color(0xFFf70200,)
                                ,borderRadius: BorderRadius.all(Radius.circular(15))) ,
                          ),Padding(
                            padding: const EdgeInsets.only(left: 4,right: 4),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                          Container(height: 5,width: 5,
                            decoration:BoxDecoration(color: Color(0xFFff605d,)
                                ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4,left: 4),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4,),
                            child: Container(height: 5,width: 5,
                              decoration:BoxDecoration(color: Color(0xFFff605d,)
                                  ,borderRadius: BorderRadius.all(Radius.circular(50))) ,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset("asset/images/photo_2023-08-19_15-35-00.jpg"),
                    )
                  ]),


                    //stacked text field form search
                    Padding(
                      padding: const EdgeInsets.only(top:0),
                      child: Container(height: 220,width: 360,decoration: BoxDecoration(gradient: LinearGradient(colors: [
                        Colors.white,
                        Color(0xFFffebec),
                      ]),),
                        child: Column(
                          children: [ Padding(
                            padding: const EdgeInsets.only(left: 7,top: 45),
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => City(),));},

                              //////
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap:(){ select();},
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                    child: Text(("Deliver To "),
                                        style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(right: 230,bottom: 30),
                              child: Text('select your city'),
                            ),
                            Container(
                                height: 55,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 1.6,
                                        strokeAlign: 1),
                                    borderRadius:
                                    BorderRadius.circular(13)), //search box
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 4, top: 27, left: 20, right: 50),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search for Cakes ,deserts",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),

                  ] );
            }
            
          }
        ));
  }
}
