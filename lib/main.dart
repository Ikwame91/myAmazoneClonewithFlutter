// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/firebase_options.dart';
import 'package:myown_amazone_clone/pages/results_screen.dart';
import 'package:myown_amazone_clone/pages/sign_in_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';

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
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: backgroundColor,
            textTheme: ThemeData.dark().textTheme),
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
                //return ScreenLayout();
                return ResultsScreen(query: 'myself');
              } else {
                //if user hasn't then we show sign in screen
                return SignInScreen();
              }
            }));
  }
}


//Cloud firestore allows to read and write data time in real time