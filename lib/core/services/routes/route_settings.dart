import 'package:ekam_app/features/home/home_view.dart';
import 'package:flutter/material.dart';

import '../../../features/appointment/appointment_view.dart';
import '../../../features/confirmation/confirmation_view.dart';
import '../../../features/my_booking/my_booking_view.dart';
import '../../../features/package/select_package_view.dart';
import '../../../features/review_summary/review_summary_view.dart';
import '../../../views/widgets/app_widgets.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) =>
    switch (settings.name) {
      HomeView.routeName => MaterialPageRoute(
          builder: (_) => const HomeView(),
        ),
      AppointmentView.routeName => MaterialPageRoute(
          builder: (_) => const AppointmentView(),
        ),
      ConfirmationView.routeName => MaterialPageRoute(
          builder: (_) => const ConfirmationView(),
        ),
      MyBookingView.routeName => MaterialPageRoute(
          builder: (_) => const MyBookingView(),
        ),
      SelectPackageView.routeName => MaterialPageRoute(
          builder: (_) => const SelectPackageView(),
        ),
      ReviewSummaryView.routeName => MaterialPageRoute(
          builder: (_) => const ReviewSummaryView(),
        ),
      _ => MaterialPageRoute(
          builder: (_) => const ErrorView(),
        ),
    };
