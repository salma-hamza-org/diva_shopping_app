// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
