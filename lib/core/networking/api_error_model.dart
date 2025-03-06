import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final DataErrorModel? data;
  final int? code;

  ApiErrorModel({required this.message, this.code, this.data});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

@JsonSerializable()
class DataErrorModel {
  List<String>? name;
  List<String>? email;
  List<String>? phone;
  List<String>? gender;
  List<String>? password;

  DataErrorModel({this.name, this.email, this.phone, this.gender, this.password});

  factory DataErrorModel.fromJson(Map<String, dynamic> json) =>
      _$DataErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataErrorModelToJson(this);
}
