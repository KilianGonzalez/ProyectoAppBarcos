import 'package:flutter/material.dart';

class Actividades extends StatelessWidget {

  final String rutafoto;
  final String textoboton; 

  const Actividades({
    super.key,
    required this.rutafoto,
    required this.textoboton,  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              border: Border.all(
                color: Colors.white,
                width: 5,
                style: BorderStyle.solid,
              )
            ),
            child: ClipOval(
              child: Image.asset(
                rutafoto,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 30),
          child: Container(
            height: 42,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
            ),
            child: Text(
              textoboton,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}