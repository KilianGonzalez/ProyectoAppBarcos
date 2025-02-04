import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/appbar.dart';

class Paginaprincipal extends StatelessWidget {
  const Paginaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: [
          //Appbar

          //Container con imagen
          Container(
            width: double.infinity,
            child: Image.asset(
              "lib/assets/fondopagprin.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}