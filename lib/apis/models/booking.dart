import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable()
class Booking {
  @JsonKey(name: 'doctor_name')
  String? doctorName;
  @JsonKey(name: 'appointment_date')
  DateTime? appointmentDate;
  @JsonKey(name: 'appointment_time')
  String? appointmentTime;
  String? location;
  @JsonKey(name: 'appointment_package')
  String? appointmentPackage;

  Booking({
    this.doctorName,
    this.appointmentDate,
    this.appointmentTime,
    this.location,
    this.appointmentPackage,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  Map<String, dynamic> toJson() => _$BookingToJson(this);
}
