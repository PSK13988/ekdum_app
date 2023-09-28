import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: Styles.titleStyle,
      );
}
