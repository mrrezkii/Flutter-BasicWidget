import 'package:flutter/material.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/shared/theme.dart';

class PlaceCard extends StatelessWidget {
  final PlaceModel place;

  PlaceCard(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 158,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
          color: Color(0xFFF5F7F7),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                place.url,
                width: 122,
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(9, 3, 0, 0),
            child: Text(
              place.name,
              style: blackMediumTextFont.copyWith(fontSize: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(9, 9, 0, 0),
            child: Text(
              place.location,
              style: blackTextFont.copyWith(fontSize: 11, color: greyColor),
            ),
          )
        ],
      ),
    );
  }
}
