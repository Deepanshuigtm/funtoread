
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funtoread/screens/offer_details.dart';

class MoreOfferItem extends StatelessWidget{
  final Map<String, dynamic> offer;

  const MoreOfferItem({Key? key, required this.offer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return OfferDetails(offer: offer,);
            },
          ),
        );

      },
      child: Container(
          height: 90,
          margin: EdgeInsets.only(bottom: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white, // You can set your desired color
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      offer['brand']['logo'],
                      height: 200,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 25.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(offer['brand']['title'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                    SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 3.0),
                        maximumSize: Size(100, 40), // Set a fixed size for the button
                      ),
                      child: Text('Get ${offer['payout_currency']}  ${offer['payout']}'),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.arrow_downward, color: Colors.orange),
                    SizedBox(width: 2.0),
                    Text('${offer['total_lead']}',style: TextStyle(fontSize: 13, color: Colors.orange, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(width: 10,)
              ],
            ),
          )
      ),
    );
  }
}