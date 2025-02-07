import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/pages/paginaprincipal.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("box_barcos_app");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Paginaprincipal(),
    );
  }
}
