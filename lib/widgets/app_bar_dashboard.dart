import 'package:flutter/material.dart';

class AppBarDashboard extends StatelessWidget {
  final String username;
  final int currentBalance;

  const AppBarDashboard({
    Key? key,
    required this.username,
    required this.currentBalance,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue.withOpacity(0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text('Hey $username', style: TextStyle(color: Colors.white)),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 7, 3),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1.3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.wallet_rounded, color: Colors.lightBlue),
                SizedBox(width: 5.0),
                Text(
                  '₹$currentBalance',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


