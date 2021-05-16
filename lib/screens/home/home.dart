import 'package:flutter/material.dart';
import 'package:going/components/app_bar.dart';
import 'package:going/components/bottom_nav_bar.dart';
import 'package:going/components/hamburger_menu.dart';
import 'package:going/components/user_avatar.dart';
import 'package:going/screens/home/components/places_categories.dart';
import 'package:going/screens/home/components/popular_places.dart';
import 'package:going/screens/home/components/recommended.dart';
import 'package:going/screens/home/components/recommended_places.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Discover',
        leading: HamburgerMenu(),
        actions: [
          UserAvatar(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PlacesCategories(),
            PopularPlaces(),
            Recommended(),
            RecommendedPlace()
          ],
        ),
      ),
    );
  }
}
