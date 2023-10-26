import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myown_amazone_clone/model/user_detai_model.dart';

class CloudFirestoreClass {
  //Creating a firebase instance
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  //getting the users id grom Firebase Auth
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future uploadNameAndAddressToDatabase(
      {required UserDetailsModel user}) async {
    await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .set(
            //set allows us to add data
            //uploading the fills
            user.getJson());
  }

  Future getNameAndAddress() async {
    DocumentSnapshot snap = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .get();

    UserDetailsModel userDetailsModel =
        UserDetailsModel.fromJson(snap.data() as dynamic);

    return userDetailsModel;
  }
}
