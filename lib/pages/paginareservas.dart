import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/appbar.dart';
import 'package:proyectoappbarcos/components/checkbox.dart';
import 'package:proyectoappbarcos/components/drawerpers.dart';
import 'package:proyectoappbarcos/components/item_tarea.dart';

class Paginareservas extends StatefulWidget {
  const Paginareservas({super.key});

  @override
  State<Paginareservas> createState() => _PaginareservasState();
}

class _PaginareservasState extends State<Paginareservas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue[100],

      //appbar
      appBar: const AppbarP(),
      endDrawer: const Drawerpers(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 92, 151, 240), ),
            height: 130,
            margin: const EdgeInsets.all(8), 
            child: const Center(child: Text("Reservas", style: TextStyle(color: Colors.white, fontSize: 80))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 92, 151, 240), ),
                  height: 200,
                  child: CheckboxWidget(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}