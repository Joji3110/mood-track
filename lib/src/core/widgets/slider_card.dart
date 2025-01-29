import 'package:flutter/material.dart';
import 'package:mood_track/src/core/constants/app_shadows.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

class SliderCard extends StatefulWidget {
  const SliderCard(
      {required this.leftLabel, required this.rightLabel, super.key});

  final String leftLabel;
  final String rightLabel;

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double _currentValue = 3.0;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<MyColor>()!;
    final nunito = Theme.of(context).extension<Nunito>()!;

    final int divisions = 6;

    return Container(
      padding: EdgeInsets.only(bottom: 16, top: 16),
      decoration: BoxDecoration(
        color: color.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: AppShadows.lightList,
      ),
      child: Column(
        children: [
          Stack(
            // alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    divisions,
                    (index) => Container(
                      height: 8,
                      width: 2,
                      decoration: BoxDecoration(color: color.grey5),
                    ),
                  ),
                ),
              ),
              Slider(
                min: 0,
                max: 6,
                // divisions: 6,
                value: _currentValue,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25)
                    .copyWith(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.leftLabel,
                      style: nunito.s11W400,
                    ),
                    Text(
                      widget.rightLabel,
                      style: nunito.s11W400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
