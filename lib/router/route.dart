import 'package:lesson3/features/select_engine_car/select_engine_car.dart';
import 'package:lesson3/features/select_model_car/select_model_car.dart';

final route = {
        '/': (context) => const selectModelCarScreen(),
        '/select_engine_car':(context) => selectEngineCarScreen(data: [])
};