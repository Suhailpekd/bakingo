import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var user = TextEditingController();
  var password = TextEditingController();
  var newpaasword = TextEditingController();
  var phone = TextEditingController();

  Future<void> share() async {
    final sss = await SharedPreferences.getInstance();
    sss.setString("name1", user.text);
    sss.setString("password", password.text);
    sss.setString("newpassword", newpaasword.text);
    sss.setString("phone", phone.text);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(controller: ScrollController(initialScrollOffset: 10),
          child: Container(
              height: 1000,
              width: 355,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white60, width: 7)),
              child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 8,right: 79),
                      child: Text("Registration Form",
                          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)),
                    ),SizedBox(height: 25,),
                    Card(elevation: 12,
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),
                        width: 300,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "User Name",border: InputBorder.none,),
                            controller: user,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 30,),
                    Card(elevation: 12,
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

                        width: 300,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "Password",border: InputBorder.none,),
                            controller: password,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Card(elevation: 12,
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

                        width: 300,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "new password",border: InputBorder.none,),
                            controller: newpaasword,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Card(elevation: 12,
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

                        width: 300,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "phone number",border: InputBorder.none,),
                            controller: phone,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: () {
                        share();
                      },
                      child: Card(elevation: 12,
                        child: Container(
                          width: 300,
                          height: 57,
                          decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(19)),
                          child: Center(
                            child: Text(
                              "Registration",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Text(
                            "i have an acount",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          )),
                    )
                  ])))),
    );
  }
}
