import 'package:flutter/material.dart';

class Viewfullcake extends StatefulWidget {
  const Viewfullcake({super.key});

  @override
  State<Viewfullcake> createState() => _ViewfullcakeState();
}

class _ViewfullcakeState extends State<Viewfullcake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children:[ Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
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
            Card(
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
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
                              "asset/images/Screenshot_2023-08-18_115736-removebg-preview.png",
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("Choclate",
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 70,
          height: 30,
          child: Center(
            child: Text("View More",
                style: TextStyle(color: Colors.white, fontSize: 9)),
          ),
          decoration: BoxDecoration(
            color: Color(0xFFfc5c5e),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
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
                              "asset/images/Screenshot_2023-08-18_115458-removebg-preview (1).png",
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("Choclate",
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
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
                              "asset/images/Screenshot_2023-08-18_115736-removebg-preview.png",
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("Choclate",
                              style:
                              TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text("For Choco Adicts",
                              style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),])
    );
  }
}
