
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OfferDetails extends StatelessWidget{
  final Map<String, dynamic> offer;
  const OfferDetails( { super.key, required this.offer });

  @override
  Widget build(BuildContext context) {
    double rating;

    try {
      rating = double.parse(offer['custom_data']['app_rating']);
    } catch (e) {
      // Handle the exception, e.g., set a default value
      rating = 0.0;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue.withOpacity(0.5)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: Text('Offer details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 210,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        offer['thumbnail'],
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer['brand']['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(height: 5),
                          Text(
                            offer['shortDesc'],
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 10,),
                          RatingBar(
                            initialRating: rating,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                              full: Icon(Icons.star, color: Colors.amber, size: 16),
                              half: Icon(Icons.star_half, color: Colors.amber, size: 16),
                              empty: Icon(Icons.star_border, color: Colors.amber, size: 16),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemSize: 26, // Set the size of the stars
                            onRatingUpdate: (rating) {
                              // Do something with the rating if needed
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            const Row(
              children: [
                Text('Step (1/4)',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: offer['status'] == 'Active' ? Colors.green : Colors.orange,
                  ),
                ),
                child: Row(
                  children: [
                    offer['status'] == 'Active'
                        ? Icon(Icons.check_circle, color: Colors.green, size: 30,)
                        : Icon(Icons.timelapse_sharp, color: Colors.orange),
                    SizedBox(width: 15.0),
                    offer['status'] == 'Active'
                        ? const Text(
                      'Install the application',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black,
                        fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    )
                        : const Text(
                      'Install the application',
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          '\u20B9 20',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            SizedBox(height: 30,),
            GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 140,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:Colors.orange,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timelapse_sharp, color: Colors.orange),
                          SizedBox(width: 15,),
                          const Text(
                            'Complete 3 Offers',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text(
                                '\u20B9 20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  )
                )
            ),
            SizedBox(height: 20,),
            GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(61, 143, 142, 56)
                  ),
                  child: Row(
                    children: [
                    Icon(Icons.circle, color: Color.fromARGB(80, 143, 142, 56), size: 30,),
                      SizedBox(width: 15.0),
                      Text('Refer WorkStation to friend',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            '\u20B9 20',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 20,),
            GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(61, 143, 142, 56)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.circle, color: Color.fromARGB(80, 143, 142, 56), size: 30,),
                      SizedBox(width: 15.0),
                      Text('Withdraw first amount',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            '\u20B9 20',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Spacer(),
            Text('${offer['total_lead']}',style: TextStyle(fontSize: 13, color: Colors.orange, fontWeight: FontWeight.bold)),
            SizedBox(height: 3,),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    child: Text('Get ${offer['payout']}'),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
          ],
        ),
      )
    );
  }
}