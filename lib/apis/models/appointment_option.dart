import 'package:json_annotation/json_annotation.dart';

part 'appointment_option.g.dart';

@JsonSerializable()
class AppointmentOption {
  List<String>? duration;
  List<String>? package;

  AppointmentOption({
    this.duration,
    this.package,
  });

  factory AppointmentOption.fromJson(Map<String, dynamic> json) =>
      _$AppointmentOptionFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentOptionToJson(this);
}
