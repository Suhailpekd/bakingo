import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  Map<String, dynamic> sample1 = {
    "name": "",
    "password": "",
    "new password": "",
    "phone": ""
  };
  Future<dynamic> share() async {
    var sss = await SharedPreferences.getInstance();
    var bbb = sss.getString("name1");
    var ccc = sss.getString("passsword");
    var ddd = sss.getString("newpassword");
    var eee = sss.getString("phone");
    sample1 = {"name": bbb, "password": ccc, "new password": ddd, "phone": eee};

    return sample1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: share(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Container(
                    height: 730,
                    width: 335,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.transparent, width: 7)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 34),
                        child: Column(children: [
                          //Lottie.asset('asset/gif/login.json'),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 45, bottom: 8, right: 100),
                            child: Text("Address Book",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 12,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                width: 300,
                                height: 55,
                                child: Row(
                                  children: [
                                    Text("user Name:"),
                                    Text(snapshot.data["name"].toString()),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Card(
                            elevation: 12,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                width: 300,
                                height: 55,
                                child: Text(snapshot.data["password"].toString())),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ]),
                      ),
                    )));
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
