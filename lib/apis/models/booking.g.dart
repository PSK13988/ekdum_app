// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      doctorName: json['doctor_name'] as String?,
      appointmentDate: json['appointment_date'] == null
          ? null
          : DateTime.parse(json['appointment_date'] as String),
      appointmentTime: json['appointment_time'] as String?,
      location: json['location'] as String?,
      appointmentPackage: json['appointment_package'] as String?,
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'doctor_name': instance.doctorName,
      'appointment_date': instance.appointmentDate?.toIso8601String(),
      'appointment_time': instance.appointmentTime,
      'location': instance.location,
      'appointment_package': instance.appointmentPackage,
    };
