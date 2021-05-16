import 'package:flutter/material.dart';
import 'package:going/constants.dart';
import 'package:going/screens/home/home.dart';
import 'package:going/screens/welcome/components/welcome_button.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Winter\n' + 'Vacation Trip',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
            style: TextStyle(
              fontSize: 16,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          WelcomeButton(
            tapEvent: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          )
        ],
      ),
    );
  }
}
