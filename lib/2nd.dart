import 'package:bakingo/3rd.dart';
import 'package:flutter/material.dart';

import 'home2nd.dart';
import 'navigationbar.dart';
class Proj2 extends StatefulWidget {
  const Proj2({super.key});

  @override
  State<Proj2> createState() => _Proj2State();
}

class _Proj2State extends State<Proj2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 480,
                color: Colors.white,
                child: Center(
                    child: Image.asset(
                  "asset/images/photo_2023-08-26_13-54-11.jpg",
                  fit: BoxFit.fill,
                )),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
                child: Text(
              ("Scrumptious cakes"),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              ("Melt in mouth happiness"),
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            )),
            SizedBox(
              height: 49,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Proj3(),
                      ));
                },
                child: Container(
                  height: 49,
                  width: 259,
                  decoration: BoxDecoration(
                      color: Color(
                        0xFFff605d,
                      ),
                      borderRadius: BorderRadius.circular(34)),
                  child: Center(
                      child: Text("NEXT",
                          style: TextStyle(color: Colors.white, fontSize: 19))),
                ),
              ),
            ),
            Padding(
              //skip button
              padding: const EdgeInsets.only(top: 14),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Navig(),
                        ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(
                          0xFF919191,
                        ),
                        fontSize: 15),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34, left: 146),
              child: Row(
                children: [
                  Container(
                    height: 7,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(
                          0xFFf70200,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: Color(
                            0xFFff605d,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: Color(
                          0xFFff605d,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4, left: 4),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: Color(
                            0xFFff605d,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
