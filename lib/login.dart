import 'package:bakingo/register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigationbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user=TextEditingController();
  var password=TextEditingController();
  var fff;
  var ggg;


  Future<void> login() async {
    var sss= await SharedPreferences.getInstance();
    var bbb=sss.getString("name1");
    var ccc=sss.getString("password");
    //  print(bbb);
    if (fff==bbb){if(ggg==ccc){Navigator.push(context, MaterialPageRoute(builder: (context) => Navig(),));}

    }
    else{
     //Fluttertoast.showToast(msg: 'Error',fontSize: 75,backgroundColor: Colors.red,textColor: Colors.white, );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(top: 45, bottom: 8,right: 100),
                      child: Text("Registration Form",
                          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)),
                    ),SizedBox(height: 10,),
                    Card(elevation: 12,
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

                        width: 300,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(controller: user, decoration: InputDecoration(hintText: "User Name",border: InputBorder.none,),

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
                            controller: password, decoration: InputDecoration(hintText: "Password",border: InputBorder.none,),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    InkWell(
                      onTap: () {
                        setState(() {


                          ggg=password.text;
                          fff=user.text;
                        });
                        login();

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38),
                        child: Card(elevation: 12,
                          child: Container(decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(19)),
                            width: 239,
                            height: 57,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ));
                          },
                          child: Text(
                            "Return to Register page",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          )),
                    )
                  ]),
                ),
              ))),
    );
  }
}
