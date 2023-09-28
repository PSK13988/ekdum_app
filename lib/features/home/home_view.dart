import 'package:ekam_app/core/constants/app_styles.dart';
import 'package:ekam_app/features/appointment/appointment_view.dart';
import 'package:ekam_app/features/confirmation/confirmation_view.dart';
import 'package:ekam_app/features/my_booking/my_booking_view.dart';
import 'package:ekam_app/features/package/select_package_view.dart';
import 'package:ekam_app/features/review_summary/review_summary_view.dart';
import 'package:flutter/material.dart';
import 'package:pdf_view/pdf_view.dart';
import 'package:test_widget/widgets/test_widgets.dart';

import '../../views/widgets/app_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    final pdfView = PdfView();
    pdfView.getPlatformVersion().then((platformVersion) =>
        print('================= $platformVersion ====================='));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: Styles.titleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppointmentView.routeName);
              },
              title: 'Book Appointment',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, SelectPackageView.routeName);
              },
              title: 'Select Package',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, ReviewSummaryView.routeName);
              },
              title: 'Review Summary',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, ConfirmationView.routeName);
              },
              title: 'Confirmation',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyBookingView.routeName);
              },
              title: 'My bookings',
            ),
            const TestWidget()
          ],
        ),
      ),
    );
  }
}
