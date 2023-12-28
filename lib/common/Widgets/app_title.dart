import 'package:flutter/material.dart';
import '/utils/app_colors.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({this.marginTop, Key? key, this.fontStyle}) : super(key: key);
  final double? marginTop;
  final TextStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop!),
      child: RichText(
        text: TextSpan(
          text: 'MAK',
          style: fontStyle!.copyWith(color: AppColors.secondary),
          children: [
            TextSpan(
              text: 'CART',
              style: fontStyle!.copyWith(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
