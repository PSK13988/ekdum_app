import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ekam_app/core/constants/app_styles.dart';

import '../../../views/widgets/app_widgets.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  static const routeName = '/confirmation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
          //replace with our own icon data.
        ),
        centerTitle: true,
        title: Text(
          'Confirmation',
          style: Styles.appBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundedButton(onPressed: () {}, title: 'Confirmation'),
          ],
        ),
      ),
    );
  }
}
