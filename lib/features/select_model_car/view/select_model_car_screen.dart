import 'package:flutter/material.dart';
import 'package:lesson3/features/select_engine_car/select_engine_car.dart';
import 'package:lesson3/features/admin/admin.dart';

class selectModelCarScreen extends StatelessWidget {
  const selectModelCarScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> data1 = ['assets/images/engine/A15SMS.jpg', 'A15SMS', 'assets/images/engine/A15MF.jpg', 'A15MF'];
    List<String> data2 = ['assets/images/engine/A15SMS.jpg', 'A15SMS', 'assets/images/engine/F16D3.jpg', 'F16D3'];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFB9A974),
        body: SafeArea( 
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 46,
              decoration: const BoxDecoration(
                color: Color(0xFFD4AF37)
              ),
              child: Row(
                children: [
                  const Text("  Nexia Club",
                    style: TextStyle(
                    fontSize: 38,
                    fontFamily: 'Sarina',
                    color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => AdminScreen(),
                        ),
                      );
                    },
                    child: Icon(Icons.settings),
                  ),
                ]
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            //Надпись о выборе машины 
            const Row(
              children: [
                Text("Выберете поколение автомобиля",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            //Кнопка для выбора нексии 1
            First_car(context, data1),
            // делаем расстояние между кнопками выбора
            const SizedBox(
              height: 35,
            ),
            //Кнопка для выбора нексии 2
            Second_car(context, data2),
          ],
        )
    
      ),
    ),
    );
  }

  Container Second_car(BuildContext context, List<String> data2) {
    return Container(
            width: 335,
            height: 224,
            decoration: BoxDecoration(
              color: Color(0xFFD4D4D4),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:  Color(0xFF787878),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5, 
                  blurRadius: 7, 
                  offset: Offset(0, 3), 
                ),
              ]
            ),
            child: Column(
              children: [
                TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => selectEngineCarScreen(data: data2),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/cars/nexia2img.jpg',
                  width: 335,
                  height: 194,
                ),
                ),
                const Text("I поколение (рестайлинг)–2008-2016",
                style: TextStyle(
                  fontSize: 15,
                ),
                )
              ],
            ),
          );
  }

  Container First_car(BuildContext context, List<String> data1) {
    return Container(
            width: 335,
            height: 224,
            decoration: BoxDecoration(
              color:  Color(0xFFD4D4D4),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFF787878),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5, 
                  blurRadius: 7, 
                  offset: Offset(0, 3), 
                ),
              ]
            ),
            child: Column(
              children: [
                TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => selectEngineCarScreen(data: data1),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/cars/nexia1img.jpeg',
                  width: 335,
                  height: 194,
                ),
                ),
                const Text("I поколение–1995-2008",
                style: TextStyle(
                  fontSize: 15,
                ),
                )
              ],
            ),
            );
  }
}