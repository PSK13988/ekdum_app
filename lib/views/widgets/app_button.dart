import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    super.key,
  });

  final VoidCallback onPressed;
  final String title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: () => onPressed(),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2.0, color: Colors.blue),
          minimumSize: const Size.fromHeight(80),
        ),
        child: Text(
          title,
          style: Styles.btnStyle,
        ),
      );
}
