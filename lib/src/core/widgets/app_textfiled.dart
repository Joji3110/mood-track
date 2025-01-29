import 'package:flutter/material.dart';
import 'package:mood_track/src/core/constants/app_shadows.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({
    required this.controller,
    required this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;


  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<MyColor>()!;


    return Container(
      decoration: BoxDecoration(
        color: color.white,
        borderRadius: AppBorderRadius.all13,
        boxShadow: AppShadows.lightList
      ),
      child: TextFormField(
        controller: controller,
        maxLines: null,
        minLines: 3,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
