// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentOption _$AppointmentOptionFromJson(Map<String, dynamic> json) =>
    AppointmentOption(
      duration: (json['duration'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      package:
          (json['package'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AppointmentOptionToJson(AppointmentOption instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'package': instance.package,
    };
