import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
  final Map<String, dynamic> offer;

  const OfferItem({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              offer['imageUrl'],
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom:5,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offer['name'],
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Get Rs. ${offer['cost']}',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Icon(Icons.arrow_downward, color: Colors.orange),
                        SizedBox(width: 5.0),
                        Text('${offer['users']} Users',style: TextStyle(fontSize: 10, color: Colors.white))
                      ],
                    )
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}