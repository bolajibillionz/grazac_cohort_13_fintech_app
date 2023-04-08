import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(40),
            right: getProportionateScreenWidth(40)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlipCard(
              fill: Fill
                  .fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              side: CardSide.FRONT, // The side to initially display.
              front: Container(
                height: getProportionateScreenHeight(188),
                width: getProportionateScreenWidth(329),
                color: Colors.blue,
                child: Text('Front'),
              ),
              back: Container(
                color: Colors.blue,
                child: Text('Back'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
