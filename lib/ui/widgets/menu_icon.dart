import 'package:flutter/material.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuIcon extends StatelessWidget {
  final String title;
  final String imageAsset;

  MenuIcon(this.title, this.imageAsset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Sending Message to $title"),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            height: 61,
            decoration: BoxDecoration(
                color: Color(0xFFF5F7F7),
                borderRadius: BorderRadius.circular(18)),
            child: SvgPicture.asset(imageAsset),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          title,
          style: blueMediumTextFont.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
