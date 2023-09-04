import 'package:bakingo/basket.dart';
import 'package:bakingo/catogories.dart';
import 'package:bakingo/profile.dart';
import 'package:flutter/material.dart';

import 'home2nd.dart';

class Navig extends StatefulWidget {
  const Navig({super.key});

  @override
  State<Navig> createState() => _NavigState();
}

class _NavigState extends State<Navig> {
  var selectedindex=0;
  var list1=[
    Home(),Catog(),Basket(),Prof()
  ];
  void navigat(int index){

    setState(() {
    selectedindex=index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:list1.elementAt(selectedindex),),
      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.red[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 20,color: Colors.black54),
            label: "Home",activeIcon:Icon(Icons.home,size: 20,color: Colors.red[900],),
            backgroundColor: Colors.white60


          ),
          BottomNavigationBarItem(icon:Icon(Icons.domain_add_sharp,size: 20,color: Colors.black54),
          label: "Categories",activeIcon:Icon(Icons.domain_add_sharp,size: 20,color: Colors.red[900],),
    backgroundColor: Colors.white60),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,size: 20,color: Colors.black54),
          label: ("Basket"),activeIcon: Icon(Icons.shopping_bag_outlined,size: 20,color: Colors.red[900])
          ),
          BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal,size: 20,color: Colors.black54),
          label: "Profile",activeIcon:Icon(Icons.perm_contact_cal,size: 20,))
        ],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed
        ,
        currentIndex: selectedindex,

        iconSize: 20,
        mouseCursor: SystemMouseCursors.allScroll,
selectedLabelStyle: TextStyle(color: Colors.red[1000]),
        elevation: 100000000000000,
        onTap: navigat,

      )
    );
  }
}
