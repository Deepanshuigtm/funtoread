
import 'package:flutter/material.dart';
import 'package:funtoread/widgets/app_bar_dashboard.dart';

class MainDashboard extends StatelessWidget{
  MainDashboard( {super.key} );
  String username = "Shubham";
  int currentBalance = 1000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarDashboard(username: username, currentBalance: currentBalance,),
        ),
        body: Container(
          // Your main content goes here
        ),
      ),
    );
  }
}