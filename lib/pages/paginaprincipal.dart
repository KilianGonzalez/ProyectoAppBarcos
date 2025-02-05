import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/actividades.dart';
import 'package:proyectoappbarcos/components/appbar.dart';
import 'package:proyectoappbarcos/components/drawerpers.dart';

class Paginaprincipal extends StatelessWidget {
  const Paginaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppbarP(),
      endDrawer: Drawerpers(),
      
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: [
          //Container con imagen
          Container(
            width: double.infinity,
            child: Image.asset(
              "lib/assets/fondopagprin.jpg",
              fit: BoxFit.cover,
            ),
          ),

          //Container con las actividades disponibles
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Actividades(rutafoto: "lib/assets/act1.jpeg", textoboton: "Fiestas",),
                  Actividades(rutafoto: "lib/assets/act2.jpg", textoboton: "Turismo",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Actividades(rutafoto: "lib/assets/act3.webp", textoboton: "En familia"),
                  Actividades(rutafoto: "lib/assets/act4.jpeg", textoboton: "Cumpleaños"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}