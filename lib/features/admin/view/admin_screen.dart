import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson3/features/admin/admin.dart';

class AdminScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            DropdownMenuModel(),
            Expanded(child: CreatePart()),
            // Expanded(child: ButtonSumbit()),
          ],
        )
      )
    );
  }
}

class DropdownMenuModel extends StatefulWidget{
  const DropdownMenuModel({super.key});

  State<DropdownMenuModel> createState() => DropdownMenuModelState();
}

const List<String> list = ['nexia1', 'nexia2'];
class DropdownMenuModelState extends State<DropdownMenuModel>{
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
class CreatePart extends StatefulWidget {
  @override
  CreatePartState createState() => CreatePartState();
}

class CreatePartState extends State<CreatePart>{
  static const List<String> textFieldNamed = ['Название', 'Артикул', 'Описание'];
  late TextEditingController controller;

  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submitData() {
  for (int i = 0; i < controllers.length; i++) {
    print('TextField $i: ${controllers[i].text}');
  }
}

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, i) => const Divider(), 
        itemBuilder: (context, i){
          return  Column(
            children: [
              TextField(
                controller: controllers[i],
                decoration: InputDecoration(
                  labelText: 'Введите ${textFieldNamed[i]}',
                  border: OutlineInputBorder(),  
                  ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          );
        }
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              for (int i = 0; i < controllers.length; i++) {
                print('TextField ${textFieldNamed[i]}: ${controllers[i].text}');
              }
              addAutoRart();
            },
            child: Icon(Icons.check),
      )
      
      
    ),);
  }

  Future<void> addAutoRart() async {

    CollectionReference autoPart = FirebaseFirestore.instance.collection('auto_parts');
    try{
    await autoPart.add({
      'name': controllers[0].text,
      'part_number': controllers[1].text,
      'description': controllers[2].text,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Автозапчасть добавлена')),
    );
    }
    catch(e){
      print('Error: $e');
    }
    controllers[0].clear();
    controllers[1].clear();
    controllers[2].clear();
  }
  //  Future<void> test() async {

  //   CollectionReference autoPart = FirebaseFirestore.instance.collection('auto_parts');

  //   await autoPart.add({
  //     'name': 12,
  //   });
  // }
}