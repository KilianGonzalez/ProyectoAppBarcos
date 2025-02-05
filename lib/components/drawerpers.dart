import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/pages/paginareservas.dart';

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
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Paginareservas()),
              );
              },
            ),
          ],
        ),
      );
  }
}