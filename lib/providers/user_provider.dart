import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/Authentications/cloud_firestore_auths.dart';
import 'package:myown_amazone_clone/model/user_detai_model.dart';

class UserDetailsProvider with ChangeNotifier {
  UserDetailsModel userDetails;

  UserDetailsProvider()
      : userDetails = UserDetailsModel(name: 'Loading', address: 'Loading');

  Future getData() async {
    userDetails = await CloudFirestoreClass().getNameAndAddress();
    notifyListeners();
  }
}
