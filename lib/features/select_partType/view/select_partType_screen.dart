import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class selectPartTypeScreen extends StatelessWidget{
  const selectPartTypeScreen({super.key});

  void main() async{
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarShow(),  
        body: Column(
          ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount)
        ), 
      )
    );
  }

  AppBar AppBarShow() {
    return AppBar(
        title: const Text('Nexia club',
          style: TextStyle(
            fontSize: 38,
              fontFamily: 'Sarina',
              color: Colors.black,
            ),
        ),
        centerTitle: true,
      );
  }
}