import 'package:bakingo/home2nd.dart';
import 'package:bakingo/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {

  var selectedcity="";
  void select(){
    selectedcity="";
    setState(() {
      selectedcity="Delhi";

    });
    shared();

  }
  void select2(){
    selectedcity="";
    setState(() {
      selectedcity="Gurgaon";

    });
    shared();

  }
  void select3(){
    selectedcity="";
    setState(() {
      selectedcity="Noida";

    });
    shared();

  }

  Future<void> shared() async {
    var shared1=await SharedPreferences.getInstance();
    shared1.setString("name", selectedcity);


Navigator.push(context, MaterialPageRoute(builder: (context) => Navig(),));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [

        Padding(
          padding: const EdgeInsets.only(
              right: 140, top: 19, bottom: 6, left: 27),
          child: Text("Select Your City",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
        ),
      ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 15),
            child: Text("Popular Cities",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: (){select();},
                  child: Container(
                    child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            "asset/images/photo_2023-08-22_13-07-09.jpg")),
                      decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                  ),
                ),
                InkWell(onTap: (){select2();},
                  child: Container(
                    child: Center(
                      child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                              "asset/images/photo_2023-08-22_13-07-09.jpg")),
                    ), decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                  ),
                ),
                InkWell(onTap: (){select3();},
                  child: Container(
                    child: Center(
                      child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                              "asset/images/photo_2023-08-22_13-07-09.jpg")),
                    ),
                      decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Delhi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),                Text("Gurgaon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
,                Text("Noida",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            "asset/images/photo_2023-08-22_13-07-09.jpg")),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                ),
                Container(
                    child: Center(
                      child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                              "asset/images/photo_2023-08-22_13-07-09.jpg")),
                    ), decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                ),
                Container(
                    child: Center(
                      child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                              "asset/images/photo_2023-08-22_13-07-09.jpg")),
                    ),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent),borderRadius: BorderRadius.circular(50),)
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Ghaziabad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),                Text("Banglore",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                ,                Text("Hyderabad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)

              ],
            ),
          ),
          Container(
            height: 900,decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230,top: 12),
                  child: Text("All Cities",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),),
                    Padding(
                      padding: const EdgeInsets.only(top: 12,right: 230),
                      child: Text("Kolkata",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 200),
                  child: Text("Hyderabad",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.black26),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(top: 12,right: 240),
                  child: Text("Jaipur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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

                 Padding(
                  padding: const EdgeInsets.only(top: 18,right: 230),
                  child: Text("Kanpur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
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
                ////////////


                ////////

                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 230),
                  child: Text("Kolkata",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 200),
                  child: Text("Hyderabad",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.black26),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(top: 12,right: 240),
                  child: Text("Jaipur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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

                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 230),
                  child: Text("Kanpur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
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



                //////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 230),
                  child: Text("Kolkata",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 200),
                  child: Text("Hyderabad",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.black26),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(top: 12,right: 240),
                  child: Text("Jaipur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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

                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 230),
                  child: Text("Kanpur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 230),
                  child: Text("Kolkata",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 200),
                  child: Text("Hyderabad",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.black26),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(top: 12,right: 240),
                  child: Text("Jaipur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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

                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 230),
                  child: Text("Kanpur",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
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

              ],
            ),
          )
        ],
      ),
    );
  }
}
