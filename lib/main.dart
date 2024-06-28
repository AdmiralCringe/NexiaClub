import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson3/router/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyAVA_M5YQxIzYGOMV16fNenJtRfkEqPqPY', 
        appId: '1:676925257077:android:008ac08932213e2e92cf3c', 
        messagingSenderId: '676925257077', 
        projectId: 'nexia-club',
        storageBucket: 'nexia-club.appspot.com',
        ));
    print('Firebase initializing successfully');
  }
  catch(e) {
    print('Error initializing Firebase: $e');
  };
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: route,
    ),
  );
}
