import 'package:json_annotation/json_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable()
class Doctor {
  @JsonKey(name: 'doctor_name')
  String? doctorName;
  String? image;
  String? speciality;
  String? location;
  @JsonKey(name: 'patients_served')
  int? patientsServed;
  @JsonKey(name: 'years_of_experience')
  int? yearsOfExperience;
  double? rating;
  @JsonKey(name: 'number_of_reviews')
  int? numberOfReviews;
  Map<String, List<String>>? availability;

  Doctor({
    this.doctorName,
    this.image,
    this.speciality,
    this.location,
    this.patientsServed,
    this.yearsOfExperience,
    this.rating,
    this.numberOfReviews,
    this.availability,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}
