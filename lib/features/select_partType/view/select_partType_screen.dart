import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class selectPartTypeScreen extends StatelessWidget{
  
  @override
  void initState() {
    GiveCountItem();
  }

  int _collectionCount = 0;
  List<Map<String, dynamic>> _items = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarShow(),  
        body: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, i) => const Divider(), 
              itemCount: _collectionCount,
              itemBuilder: (context, i){
                return Column(
                  children: [
                    
                  ],
                );
              }
            ),
          ],
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
  Future<void> GiveCountItem() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore.collection('root_collection').get();
    _collectionCount = querySnapshot.size;
  }
}