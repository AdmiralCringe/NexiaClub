import 'package:flutter/material.dart';



class selectEngineCarScreen extends StatelessWidget {
  
  // select_engine_1pok({required this.generation});
  final List<String> data;
  selectEngineCarScreen({required this.data});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
      backgroundColor: Color(0xFFB9A974), 
      body: SafeArea(
        child: Column(
          children: [
            //header
           Container(
              width: double.infinity,
              height: 46,
              decoration: const BoxDecoration(
                color: Color(0xFFD4AF37)
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed:() {
                      Navigator.pop(context);
                    }, 
                  icon: Icon(Icons.arrow_back_ios)
                  ),
                  const Text("    Nexia Club",
                    style: TextStyle(
                    fontSize: 38,
                    fontFamily: 'Sarina',
                    color: Colors.black,
                    ),
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
                Text("Выберете двигатель",
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
            Container(
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
                    print(data);
                  },
                  child: Image.asset(
                    data[0],
                    width: 335,
                    height: 194,
                  ),
                  ),
                  Text(data[1],
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  )
                ],
              ),
              ),
            // делаем расстояние между кнопками выбора
            const SizedBox(
              height: 35,
            ),
            //Кнопка для выбора нексии 2
            Container(
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
                  onPressed: () {},
                  child: Image.asset(
                    data[2],
                    width: 335,
                    height: 194,
                  ),
                  ),
                  Text(data[3],
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  )
                ],
              ),
            ),
          ],
        )
    
      ),
    );
    
  }
}