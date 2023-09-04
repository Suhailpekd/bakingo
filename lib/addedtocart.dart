import 'package:bakingo/home2nd.dart';
import 'package:bakingo/viewall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // var latitued="loading";
  // var longitude="loading";
  // Future<void>location()async {
  //   Position position= await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //
  //   ) ;
  //   print(position);
  //   setState(() {
  //     latitued=position.latitude.toString();
  //     longitude=position.longitude.toString();
  //   });
  //
  //
  //
  // }
  var value = 1;
  void negative() {
    if (value >= 2) {
      setState(() {
        value--;
      });
    }
  }

  void positive() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 90,
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 44),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 4,
                          right: 12,
                          top: 10,
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            },
                            child: Icon(Icons.arrow_back)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text("Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Column(
              children: [
                Card(
                  child: Container(
                    height: 120,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Row(children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, left: 10),
                            child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  "asset/images/photo_2023-08-18_22-47-27.jpg",
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Delecteble Truffle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 100, top: 5),
                                  child: Text("0.5 kg",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined),
                                    Text('549', style: TextStyle(fontSize: 23)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 150),
                          child: Container(
                              width: 160,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                children: [
                                  Container(
                                    child: InkWell(
                                      onLongPress: () {
                                        negative();
                                      },
                                      child: TextButton(
                                          onPressed: () {
                                            negative();
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.red,
                                          ),
                                          style: ButtonStyle()),
                                    ),
                                  ),
                                  Text(
                                    value.toString(),
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      positive();
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  elevation: 3,
                ),
                SizedBox(
                  height: 175,
                )
              ],
            ),
            Card(
              child: Container(
                width: 330,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                child: SizedBox(
                    height: 20,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Add instructions for chef",
                            icon: Icon(
                              Icons.add_circle_outlined,
                              color: Colors.grey,
                              size: 13,
                            )),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "grand tottel:",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
                Icon(Icons.currency_rupee_outlined),
                Text(
                  "2,595:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                TextButton(onPressed: () {}, child: Text("view price Deteils"))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Icon(Icons.location_on_sharp),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Center(child: Text(latitued)),
                      //
                      // Center(child: Text(longitude)) ,
                      // ElevatedButton(onPressed: (){
                      //   location();
                      // }, child: Text("ghgh"))

                    ],

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 300,
              height: 59,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text("proceed with phone no",
                      style: TextStyle(color: Colors.white))),
            )
          ]),
        ));
  }
}
