import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mood_track/src/core/constants/assets.dart';

class FeelCard extends StatelessWidget {
  const FeelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SvgPicture.asset(Assets.joy)
      ],
    ));
  }
}
