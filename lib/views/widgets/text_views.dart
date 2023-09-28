import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';

class TextViews extends StatelessWidget {
  const TextViews({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) => Text(
        title,
        textAlign: TextAlign.center,
        style: Styles.appTextStyle,
      );
}
