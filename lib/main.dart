// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/firebase_options.dart';
import 'package:myown_amazone_clone/pages/product_screen.dart';
import 'package:myown_amazone_clone/pages/sign_in_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';

import 'model/product_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: 'AIzaSyBxlKIxweUQ20uN63dEp08KNKsjKelNLJc',
      appId: '1:106133232622:web:6fc48fb76fe094a2cc0cff',
      messagingSenderId: '106133232622',
      projectId: 'myeclone-3867f',
      authDomain: 'myeclone-3867f.firebaseapp.com',
      storageBucket: 'myeclone-3867f.appspot.com',
    ));
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(const AmazonClone());
}

class AmazonClone extends StatelessWidget {
  const AmazonClone({super.key});
  // Function to sign out the user
  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          // textTheme: TextTheme(
          //   bodyLarge: TextStyle(
          //       fontSize: 18, fontFamily: 'Roboto', color: Colors.black),
          // ),
        ),
        //A stream builder is a widget that constantly listens to streams or data changes and rebuilds whats in the builder
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> user) {
              //ASYNCHRONOUS DATA IS BEING FETCHED PROCESS OF FETCH[[[[ASYNC SNAPSHOTS DUTY]]]]
              if (user.connectionState == ConnectionState.waiting) {
                //if its waiting
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
                //user has signed in at some point in time before and credentials is still there
              } else if (user.hasData) {
                // return ScreenLayout();
                return ProductScreen(
                    productModel: ProductModel(
                        url: 'assets/images/pexels.jpg',
                        productName:
                            'Laundry Detergent Dispenser 3 piece, 780z',
                        cost: 76465,
                        discount: 45,
                        seller: 'Magnom terraclobo milan transcode  white',
                        sellerUid: 'sellerUid',
                        rating: 3,
                        noOfRating: 3));
              } else {
                //if user hasn't then we show sign in screen
                return SignInScreen();
              }
            }));
  }
}


//Cloud firestore allows to read and write data time in real time