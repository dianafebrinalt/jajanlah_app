import 'package:flutter/material.dart';
import 'package:jajanlah_app/onboarding/model/onboarding_item_model.dart';

class OnboardingItemView extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Image.asset(
                "assets/images/${item.image}",
                fit: BoxFit.fitHeight,
              )),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                Text(
                  item.title,
                  style: const TextStyle(
                      fontFamily: 'SF-Pro-Rounded',
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  item.description,
                  style: const TextStyle(
                      fontFamily: 'SF-Pro-Rounded',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
