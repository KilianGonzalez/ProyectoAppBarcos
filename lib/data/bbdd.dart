import 'package:hive/hive.dart';

class Bbdd {
  List reservaslista = [];

  final Box _boxapp = Hive.box("box_barcos_app");

  void CargarDatos() {
    reservaslista = _boxapp.get("box_barcos_app");
  }

  void actualizarDatos() {
    _boxapp.put("box_barcos_app", reservaslista);
  }

  void datosEj() {
    reservaslista = [
      {"nombre": "Kilian", "actividad": "Fiesta", "valor": false},
      {"nombre": "Edgar", "actividad": "Cumpleaños", "valor": true},
    ];
  }
}