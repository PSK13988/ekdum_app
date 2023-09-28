import 'package:ekam_app/apis/models/appointment.dart';
import 'package:ekam_app/apis/models/booking.dart';
import 'package:ekam_app/apis/models/doctor.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'models/appointment_option.dart';

part 'api_client.g.dart';

@RestApi(
    baseUrl:
        'https://my-json-server.typicode.com/githubforekam/doctor-appointment/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/doctors")
  Future<List<Doctor>> getDoctors();

  @GET("/appointment_options")
  Future<AppointmentOption> getAppointmentOptions();

  @GET("/booking_confirmation")
  Future<Booking> getConfirmationBookings();

  @GET("/appointments")
  Future<List<Appointment>> getAppointments();
}
