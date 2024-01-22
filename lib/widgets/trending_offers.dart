import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:funtoread/providers/trending_offers.dart';

import '../providers/data.dart';
import 'offer_item.dart';

class TrendingOffers extends ConsumerWidget {
  TrendingOffers( {super.key} );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offers = ref.watch(trendingOffersProvider);
    final Data = ref.watch(DataProvider);

    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.local_fire_department_sharp, color: Colors.orange),
            SizedBox(width: 7.0),
            Text(
              'Trending Offers',
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 250, // Adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Data.length,
            itemBuilder: (context, index) {
              return OfferItem(offer: Data[index]);
            },
          ),
        ),
      ],
    );
  }
}