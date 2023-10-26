// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserDetailsModel {
  final String name;
  final String address;

  UserDetailsModel({required this.name, required this.address});

  // creating a method that maps
  Map<String, dynamic> getJson() => {'name': name, 'address': address};

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'address': address,
    };
  }

  factory UserDetailsModel.fromMap(Map<String, dynamic> map) {
    return UserDetailsModel(
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetailsModel.fromJson(String source) =>
      UserDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
