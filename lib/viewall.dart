import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addedtocart.dart';
import 'home2nd.dart';
import 'navigationbar.dart';

class Viewall extends StatefulWidget {
  const Viewall({super.key});

  @override
  State<Viewall> createState() => _ViewallState();
}

class _ViewallState extends State<Viewall> {
  var isselected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: 139,
          color: Colors.white,
          child: Column(
            children: [
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
                      child: Text("Photo Cakes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 8),
                    child: Container(
                      width: 90,
                      height: 27,
                      child: Center(
                        child: Text("BirthDay",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 8),
                    child: Container(
                      width: 90,
                      height: 27,
                      child: Center(
                        child: Text("COUPLES",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 8),
                    child: Container(
                      width: 90,
                      height: 27,
                      child: Center(
                        child: Text("OTHERS",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(children: [
            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 23,
                        width: 23,
                        child: Center(
                            child: Image.asset(
                                "asset/images/299-2998556_vegetarian-food-symbol-icon-non-veg-symbol-png-removebg-preview.png")),
                      ),

                      //first bottom sheet

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Best Seller ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 6,
                    ),
                    child: Text(
                      "Frozen ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 3,
                      ),
                      child: Text(
                        "Choclate ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Text(
                      "Tuffle Cake ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 58,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee),
                        Text(
                          "775",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Text(
                      "(9% OFF)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 25,
                          child: Center(
                            child: Row(
                              children: [
                                Text("5 ",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 14)),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 32,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(" More Deteils",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white60),
                    ),
                  ),
                  ////////////////
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34)),
                      height: 170,
                      width: 170,
                      child: Center(
                        child: Image.asset(
                          "asset/images/photo_2023-08-18_23-30-05.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 30),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: Colors.red,
                            shape: CircleBorder(eccentricity: 1),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 1000,
                                color: Colors.white,
                                child: Center(
                                  child: ListView(children: [
                                    Container(
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              "Nutella Choco Walnut Brownie",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 13),
                                            child: Text(
                                              "Costumize as per Your requirements",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 14, bottom: 9),
                                      child: Text(
                                        "Select Wight",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9, right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("0.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("2 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("4 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 13, bottom: 9),
                                      child: Text(
                                        "Cake Message",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25, top: 20),
                                      child: Container(
                                          height: 47,
                                          width: 285,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade300,
                                                  width: 1.6,
                                                  strokeAlign: 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      3)), //search box
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4,
                                                top: 20,
                                                left: 20,
                                                right: 50),
                                            child: TextFormField(
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "Enter message on cake",
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      child: Text("25 Characters left",
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize: 12)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 49, left: 15),
                                      child: Container(
                                        height: 64,
                                        color: Colors.white70,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text("item Totel",
                                                    style: TextStyle(
                                                        color: Colors.grey[900],
                                                        fontSize: 15)),
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .currency_rupee_outlined,
                                                        size: 23),
                                                    Text("649",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 26)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: InkWell(
                                                      onTap: () {
                                                        Icon(CupertinoIcons
                                                            .heart_fill);
                                                      },
                                                      child: Icon(CupertinoIcons
                                                          .heart)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 49, right: 15),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      Cart())));
                                                    },
                                                    child: Container(
                                                      width: 120,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFfc5c5e),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            "ADD TO CART",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 99,
                          height: 49,
                          child: Center(
                            child: Text("ADD",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15)),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ])
                ]),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Center(
                child: Container(
                  width: 300,
                  height: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black26),
                ),
              ),
            ),
////////////////////////

            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 23,
                        width: 23,
                        child: Center(
                            child: Image.asset(
                                "asset/images/299-2998556_vegetarian-food-symbol-icon-non-veg-symbol-png-removebg-preview.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Best Seller ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 6,
                    ),
                    child: Text(
                      "Frozen ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 3,
                      ),
                      child: Text(
                        "Choclate ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Text(
                      "Tuffle Cake ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 58,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee),
                        Text(
                          "775",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Text(
                      "(9% OFF)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 25,
                          child: Center(
                            child: Row(
                              children: [
                                Text("5 ",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 14)),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 32,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(" More Deteils",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white60),
                    ),
                  ),
                  ////////////////
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34)),
                      height: 170,
                      width: 170,
                      child: Center(
                        child: Image.asset(
                          "asset/images/photo_2023-08-18_22-47-40.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    //2nd bottem sheet
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 30),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: Colors.red,
                            shape: CircleBorder(eccentricity: 1),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 1000,
                                color: Colors.white,
                                child: Center(
                                  child: ListView(children: [
                                    Container(
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              "Nutella Choco Walnut Brownie",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 13),
                                            child: Text(
                                              "Costumize as per Your requirements",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 14, bottom: 9),
                                      child: Text(
                                        "Select Wight",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9, right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("0.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("2 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("4 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 13, bottom: 9),
                                      child: Text(
                                        "Cake Message",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25, top: 20),
                                      child: Container(
                                          height: 47,
                                          width: 285,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade300,
                                                  width: 1.6,
                                                  strokeAlign: 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      3)), //search box
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4,
                                                top: 20,
                                                left: 20,
                                                right: 50),
                                            child: TextFormField(
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "Enter message on cake",
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      child: Text("25 Characters left",
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize: 12)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 49, left: 15),
                                      child: Container(
                                        height: 64,
                                        color: Colors.white70,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text("item Totel",
                                                    style: TextStyle(
                                                        color: Colors.grey[900],
                                                        fontSize: 15)),
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .currency_rupee_outlined,
                                                        size: 23),
                                                    Text("649",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 26)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: InkWell(
                                                      onTap: () {
                                                        Icon(CupertinoIcons
                                                            .heart_fill);
                                                      },
                                                      child: Icon(CupertinoIcons
                                                          .heart)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 49, right: 15),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      Cart())));
                                                    },
                                                    child: Container(
                                                      width: 120,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFfc5c5e),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            "ADD TO CART",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 99,
                          height: 49,
                          child: Center(
                            child: Text("ADD",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15)),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ])
                ]),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Center(
                child: Container(
                  width: 300,
                  height: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black26),
                ),
              ),
            ),
            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 23,
                        width: 23,
                        child: Center(
                            child: Image.asset(
                                "asset/images/299-2998556_vegetarian-food-symbol-icon-non-veg-symbol-png-removebg-preview.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Best Seller ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 6,
                    ),
                    child: Text(
                      "Frozen ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 3,
                      ),
                      child: Text(
                        "Choclate ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Text(
                      "Tuffle Cake ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 58,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee),
                        Text(
                          "775",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Text(
                      "(9% OFF)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 25,
                          child: Center(
                            child: Row(
                              children: [
                                Text("5 ",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 14)),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 32,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(" More Deteils",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white60),
                    ),
                  ),
                  ////////////////
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34)),
                      height: 170,
                      width: 170,
                      child: Center(
                        child: Image.asset(
                          "asset/images/photo_2023-08-18_23-30-02.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd bottom sheet starting

                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 30),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: Colors.red,
                            shape: CircleBorder(eccentricity: 1),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 1000,
                                color: Colors.white,
                                child: Center(
                                  child: ListView(children: [
                                    Container(
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              "Nutella Choco Walnut Brownie",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 13),
                                            child: Text(
                                              "Costumize as per Your requirements",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 14, bottom: 9),
                                      child: Text(
                                        "Select Wight",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9, right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("0.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("2 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("4 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 13, bottom: 9),
                                      child: Text(
                                        "Cake Message",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25, top: 20),
                                      child: Container(
                                          height: 47,
                                          width: 285,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade300,
                                                  width: 1.6,
                                                  strokeAlign: 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      3)), //search box
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4,
                                                top: 20,
                                                left: 20,
                                                right: 50),
                                            child: TextFormField(
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "Enter message on cake",
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      child: Text("25 Characters left",
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize: 12)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 49, left: 15),
                                      child: Container(
                                        height: 64,
                                        color: Colors.white70,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text("item Totel",
                                                    style: TextStyle(
                                                        color: Colors.grey[900],
                                                        fontSize: 15)),
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .currency_rupee_outlined,
                                                        size: 23),
                                                    Text("649",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 26)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: InkWell(
                                                      onTap: () {
                                                        Icon(CupertinoIcons
                                                            .heart_fill);
                                                      },
                                                      child: Icon(CupertinoIcons
                                                          .heart)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 49, right: 15),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      Cart())));
                                                    },
                                                    child: Container(
                                                      width: 120,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFfc5c5e),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            "ADD TO CART",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 99,
                          height: 49,
                          child: Center(
                            child: Text("ADD",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15)),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ])
                ]),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Center(
                child: Container(
                  width: 300,
                  height: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black26),
                ),
              ),
            ),
            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 23,
                        width: 23,
                        child: Center(
                            child: Image.asset(
                                "asset/images/299-2998556_vegetarian-food-symbol-icon-non-veg-symbol-png-removebg-preview.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Best Seller ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 6,
                    ),
                    child: Text(
                      "Frozen ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 3,
                      ),
                      child: Text(
                        "Choclate ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Text(
                      "Tuffle Cake ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 58,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee),
                        Text(
                          "775",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Text(
                      "(9% OFF)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 25,
                          child: Center(
                            child: Row(
                              children: [
                                Text("5 ",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 14)),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 32,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(" More Deteils",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white60),
                    ),
                  ),
                  ////////////////
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34)),
                      height: 170,
                      width: 170,
                      child: Center(
                        child: Image.asset(
                          "asset/images/Screenshot 2023-08-18 153845.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd bottom sheet starting

                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 30),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: Colors.red,
                            shape: CircleBorder(eccentricity: 1),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 1000,
                                color: Colors.white,
                                child: Center(
                                  child: ListView(children: [
                                    Container(
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              "Nutella Choco Walnut Brownie",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 13),
                                            child: Text(
                                              "Costumize as per Your requirements",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 14, bottom: 9),
                                      child: Text(
                                        "Select Wight",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9, right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("0.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("1.5 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("2 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9),
                                                child: Container(
                                                  width: 99,
                                                  height: 49,
                                                  child: Center(
                                                    child: Text("4 Kg",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 15)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 13, bottom: 9),
                                      child: Text(
                                        "Cake Message",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25, top: 20),
                                      child: Container(
                                          height: 47,
                                          width: 285,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade300,
                                                  width: 1.6,
                                                  strokeAlign: 1),
                                              borderRadius:
                                              BorderRadius.circular(
                                                  3)), //search box
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4,
                                                top: 20,
                                                left: 20,
                                                right: 50),
                                            child: TextFormField(
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                "Enter message on cake",
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      child: Text("25 Characters left",
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize: 12)),
                                    ),
                                    SizedBox(height: 35,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 49, left: 15),
                                      child: Container(
                                        height: 64,
                                        color: Colors.white70,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text("item Totel",
                                                    style: TextStyle(
                                                        color: Colors.grey[900],
                                                        fontSize: 15)),
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .currency_rupee_outlined,
                                                        size: 23),
                                                    Text("649",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 26)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: InkWell(
                                                      onTap: () {
                                                        Icon(CupertinoIcons
                                                            .heart_fill);
                                                      },
                                                      child: Icon(CupertinoIcons
                                                          .heart)),
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 49, right: 15),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                              ((context) =>
                                                                  Cart())));
                                                    },
                                                    child: Container(
                                                      width: 120,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0xFFfc5c5e),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(4),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            "ADD TO CART",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            },
                          );
                        },

                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            width: 99,
                            height: 49,
                            child: Center(
                              child: Text("ADD",
                                  style:
                                  TextStyle(color: Colors.red, fontSize: 15)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ])
                ]),
              )
              ///////////////////////


            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Center(
                child: Container(
                  width: 300,
                  height: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black26),
                ),
              ),
            ),


          ]),
        )
      ]),
    );
  }
}
