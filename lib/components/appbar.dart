import 'package:flutter/material.dart';

class AppbarP extends StatelessWidget implements PreferredSizeWidget {
  const AppbarP({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 137, 191, 236), // Cambia el color del fondo
      toolbarHeight: 100.0, // Aumenta el tamaño del AppBar
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Image.asset('lib/assets/logo.png', height: 80, width: 80, fit: BoxFit.cover),
          ),
          const Text('NaviLux', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.white)),
          const SizedBox(width: 1,)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}



  