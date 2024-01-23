
import 'package:flutter/material.dart';
import 'package:funtoread/widgets/app_bar_dashboard.dart';
import 'package:funtoread/widgets/more_offers.dart';
import 'package:funtoread/widgets/nav_bar.dart';
import 'package:funtoread/widgets/trending_offers.dart';

class MainDashboard extends StatelessWidget{
  MainDashboard( {super.key} );
  String username = "Shubham";
  int currentBalance = 1000;
  String page = "all_offers";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBarDashboard(username: username, currentBalance: currentBalance,),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(page: page,),
                const SizedBox(height: 20,),
                page == 'all_offers' ?
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TrendingOffers(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: MoreOffers(),
                    ),
                  ],
                ):
                const Text('Other pages')
              ],
            ),
          )
      ),
    );
  }
}