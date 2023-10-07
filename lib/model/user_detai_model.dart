class UserDetailsModel {
  final String name;
  final String address;

  UserDetailsModel({required this.name, required this.address});

  //creating a method that maps
  Map<String, dynamic> getJson() => {'name': name, 'address': address};
}
