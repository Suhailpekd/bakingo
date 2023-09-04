import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 240, top: 19, bottom: 6, left: 7),
                child: Text("Review",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20)),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                                        Padding(
                                          padding: const EdgeInsets.only(left: 110,top: 8),
                                          child: RatingBar.builder(glowRadius: 5,itemSize: 15,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ),
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
                                  child: Text("delivered in on time,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                                        Text("The cake was delivered very well .....",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),

                                        Text("Tasted awsome........,",style: TextStyle(fontSize: 14,color:Colors.grey,fontWeight: FontWeight.normal),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 110,top: 8),
                                          child: RatingBar.builder(glowRadius: 5,itemSize: 15,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ),
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





            ],
          ),

        ),
      ),
    );
  }
}
