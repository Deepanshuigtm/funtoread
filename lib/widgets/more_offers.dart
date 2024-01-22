import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:funtoread/providers/data.dart';

import '../providers/dummy_data.dart';
import 'more_offer_item.dart';

class MoreOffers extends ConsumerWidget{
  MoreOffers( {super.key} );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Data = ref.watch(DataProvider);

    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.read_more_rounded, size: 40, color: Colors.blue),
            SizedBox(width: 5.0),
            Text(
              'More offers',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          child: Column(
            children: List.generate(
              Data.length,
                  (index) => MoreOfferItem(offer: Data[index]),
            ),
          ),
        )
      ],
    );
  }
}