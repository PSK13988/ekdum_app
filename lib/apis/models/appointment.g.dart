// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map<String, dynamic> json) => Appointment(
      bookingId: json['booking_id'] as String?,
      doctorName: json['doctor_name'] as String?,
      location: json['location'] as String?,
      appointmentDate: json['appointment_date'] == null
          ? null
          : DateTime.parse(json['appointment_date'] as String),
      appointmentTime: json['appointment_time'] as String?,
    );

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'booking_id': instance.bookingId,
      'doctor_name': instance.doctorName,
      'location': instance.location,
      'appointment_date': instance.appointmentDate?.toIso8601String(),
      'appointment_time': instance.appointmentTime,
    };
