import 'package:flutter/material.dart';
import 'package:ekam_app/core/constants/app_styles.dart';

import '../../../views/widgets/app_widgets.dart';

class SelectPackageView extends StatelessWidget {
  const SelectPackageView({super.key});

  static const routeName = '/select-package';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Package',
          style: Styles.appBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundedButton(onPressed: () {}, title: 'Select Package'),
          ],
        ),
      ),
    );
  }
}
