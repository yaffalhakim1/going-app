import 'package:flutter/material.dart';
import 'package:going/models/place.dart';
import 'package:going/screens/home/components/grid_place_card.dart';
import '../../../responsive.dart';

class RecommendedPlace extends StatelessWidget {
  const RecommendedPlace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: isLandscape(context) ? 3 : 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: List.generate(demoPlaces.length, (index) {
          return GridPlaceCard(
            tapEvent: () {},
            place: demoPlaces[index],
          );
        }),
      ),
    );
  }
}
