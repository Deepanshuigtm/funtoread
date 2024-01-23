import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final String page;
  const NavBar({ Key? key, required this.page }) : super(key: key);

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90,
            decoration: BoxDecoration(
              color: widget.page == 'all_offers'?Colors.black12:Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: widget.page == 'all_offers'?Colors.blue:Colors.white,
                  width: 2.3,
                ),
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.dashboard_customize_outlined, color: Colors.lightBlue),
                SizedBox(height: 5.0),
                Text('All Offers')
              ],
            ),
          ),
          Container(
            width: 90,
            decoration: BoxDecoration(
              color: widget.page == 'gifts'?Colors.black12:Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: widget.page == 'gifts'?Colors.blue:Colors.white,
                  width: 2.3,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.card_giftcard_outlined, color: Colors.red),
                SizedBox(height: 5.0),
                Text('Gifts')
              ],
            ),
          ),
          Container(
            width: 90,
            decoration: BoxDecoration(
              color: widget.page == 'up_comming'?Colors.black12:Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: widget.page == 'up_comming'?Colors.blue:Colors.white,
                  width: 2.3,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.update, color: Colors.orange),
                SizedBox(height: 5.0),
                Text('Upcoming')
              ],
            ),
          ),
          Container(
            width: 90,
            decoration: BoxDecoration(
              color: widget.page == 'my_offers'?Colors.black12:Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: widget.page == 'my_offers'?Colors.blue:Colors.white,
                  width: 2.3,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.purple),
                SizedBox(height: 5.0),
                Text('My Offers')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
