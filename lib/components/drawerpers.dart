import 'package:flutter/material.dart';

class Drawerpers extends StatelessWidget {
  const Drawerpers({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 137, 191, 236),
              ),
              child: Text(
                'Menú',
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // Opciones del Drawer
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Reservas'),
              onTap: () {
                // Acción cuando se selecciona "Inicio"
                Navigator.of(context).pop(); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Volver al menú'),
              onTap: () {
                // Acción cuando se selecciona "Cerrar sesión"
                Navigator.of(context).pop(); // Cierra el Drawer
              },
            ),
          ],
        ),
      );
  }
}