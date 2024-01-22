// image_provider.dart

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final trendingOffersProvider = Provider<List<Map<String, dynamic>>>((ref) {
  // Sample data for the list of images
  return [
    {
      'imageUrl': 'https://www.mentalup.co/img/blog/best-safe-kids-games-3.jpg',
      'name': 'Alto\'s Odysseys',
      'cost': '230',
      'users': '4,657',
    },
    {
      'imageUrl': 'https://res.ayiyo.com/assets/skatehooligans/icon_medium_jpeg.webp',
      'name': 'Alto\'s Odysseys',
      'cost': '230',
      'users': '4,957',
    },
    {
      'imageUrl': 'https://cdn.splashmath.com/curriculum_uploads/images/playables/case_carnival_53_54.png',
      'name': '2 Players Games',
      'cost': '100',
      'users': '4,157',
    },
    {
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHiWZygcW6SzVc1AM7VcICHGQcJOr3dZemzg&usqp=CAU',
      'name': 'Alto\'s Odysseys',
      'cost': '230',
      'users': '3,957',
    },
  ];
});
