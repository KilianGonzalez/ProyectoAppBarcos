import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/appbar.dart';
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
      appBar: AppbarP(),
      endDrawer: Drawerpers(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [
          Container(
            height: 130,
            color: const Color.fromARGB(255, 92, 151, 240), 
            margin: const EdgeInsets.all(8), 
            child: const Center(child: Text("Reservas", style: TextStyle(color: Colors.white, fontSize: 80))),
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 92, 151, 240), 
            child: ItemTarea(
              textotarea: textotarea, 
              valorCheckbox: valorCheckbox, 
              cambiaValorCheckbox: cambiaValorCheckbox, 
              borrarTarea: borrarTarea),
          ),
        ],
      ),
    );
  }
}