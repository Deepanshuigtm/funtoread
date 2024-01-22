import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({ Key? key }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // You can set your desired color
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.dashboard_customize_outlined, color: Colors.lightBlue),
              SizedBox(height: 5.0),
              Text('All Offers')
            ],
          ),
          SizedBox(width: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.card_giftcard_outlined, color: Colors.red),
              SizedBox(height: 5.0),
              Text('Gifts')
            ],
          ),
          SizedBox(width: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.update, color: Colors.orange),
              SizedBox(height: 5.0),
              Text('Upcoming')
            ],
          ),
          SizedBox(width: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.check_circle_outline, color: Colors.purple),
              SizedBox(height: 5.0),
              Text('My Offers')
            ],
          ),
        ],
      ),
    );
  }
}
