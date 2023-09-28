import 'package:json_annotation/json_annotation.dart';

part 'appointment.g.dart';

@JsonSerializable()
class Appointment {
  @JsonKey(name: 'booking_id')
  String? bookingId;
  @JsonKey(name: 'doctor_name')
  String? doctorName;
  String? location;
  @JsonKey(name: 'appointment_date')
  DateTime? appointmentDate;
  @JsonKey(name: 'appointment_time')
  String? appointmentTime;

  Appointment({
    this.bookingId,
    this.doctorName,
    this.location,
    this.appointmentDate,
    this.appointmentTime,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}
