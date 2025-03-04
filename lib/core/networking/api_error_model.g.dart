// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data:
          json['data'] == null
              ? null
              : DataErrorModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

DataErrorModel _$DataErrorModelFromJson(
  Map<String, dynamic> json,
) => DataErrorModel(
  name: (json['name'] as List<dynamic>?)?.map((e) => e as String).toList(),
  email: (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
  phone: (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
  gender: (json['gender'] as List<dynamic>?)?.map((e) => e as String).toList(),
  password:
      (json['password'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$DataErrorModelToJson(DataErrorModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
    };
