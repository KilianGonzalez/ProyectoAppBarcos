import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:proyectoappbarcos/components/appbar.dart';
import 'package:proyectoappbarcos/components/dialognuevareserva.dart';
import 'package:proyectoappbarcos/components/drawerpers.dart';
import 'package:proyectoappbarcos/components/item_reserva.dart';
import 'package:proyectoappbarcos/data/bbdd.dart';


class Paginareservas extends StatefulWidget {
  const Paginareservas({super.key});

  @override
  State<Paginareservas> createState() => _PaginareservasState();
}

class _PaginareservasState extends State<Paginareservas> {

  final Box _boxBarcos = Hive.box("box_barcos_app");
  Bbdd db = Bbdd();

  TextEditingController tecTextoreserva = TextEditingController();
  TextEditingController tecTextoactividad = TextEditingController();

  @override
  void initState() {
    if (_boxBarcos.get("box_barcos_app") == null) {
      db.datosEj();
    } else {
      db.CargarDatos();
    }
    super.initState();
  }

  void accionCancelar() {
    Navigator.of(context).pop();
    tecTextoreserva.clear();
    tecTextoactividad.clear();
  }

  void accionGuardar() {
    setState(() {
      db.reservaslista.add({"nombre" : tecTextoreserva.text, "actividad" : tecTextoactividad.text, "valor" : false});
    });
    db.actualizarDatos();
    accionCancelar();
  }

  void cambiaCheckbox(bool v_checkbox, int posLista) {
    setState(() {
      db.reservaslista[posLista]["valor"] = !db.reservaslista[posLista]["valor"];
    });
    db.actualizarDatos();
  }

  void accionBorrarTarea(int posLista) {
    setState(() {
      db.reservaslista.removeAt(posLista);
    });
    db.actualizarDatos();
  }

  void crearNuevaTarea() {
    showDialog(
      context: context, 
      builder: (context){
        return Dialognuevareserva(
          tecTextoreserva: tecTextoreserva,
          tecTextoactividad: tecTextoactividad,
          accionGuardar: accionGuardar,
          accionCancelar: accionCancelar,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue[100],

      //appbar
      appBar: const AppbarP(),
      endDrawer: const Drawerpers(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        shape: const CircleBorder(),
        onPressed: crearNuevaTarea,
        child: Icon(Icons.add, color: Colors.blue[800]),
      ),

      body: ListView.builder(
        itemCount: db.reservaslista.length,
        itemBuilder: (context, index) {
          return ItemReserva(
            textores: db.reservaslista[index]["nombre"],
            textoact: db.reservaslista[index]["actividad"],
            valorCheckbox: db.reservaslista[index]["valor"],
            cambiaValorCheckbox: (v_checkbox) => cambiaCheckbox(
              db.reservaslista[index]["valor"],
              index,
            ),
            borrarReserva: (valor) => accionBorrarTarea(index),
          );
        },
      ),
    );
  }
}