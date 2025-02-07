import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/boton_dialog.dart';

class Dialognuevareserva extends StatelessWidget {
  final TextEditingController tecTextoreserva;
  final TextEditingController tecTextoactividad;
  final Function()? accionGuardar;
  final Function()? accionCancelar;

  const Dialognuevareserva({
    super.key,
    required this.tecTextoreserva,
    required this.tecTextoactividad,
    required this.accionGuardar,
    required this.accionCancelar,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: tecTextoreserva,
              cursorColor: Colors.blue[300],
              decoration: InputDecoration(
                hintText: "Escribe tu nombre...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[100],
              ),
            ),

            TextField(
              controller: tecTextoactividad,
              cursorColor: Colors.blue[300],
              decoration: InputDecoration(
                hintText: "Escribe la actividad...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[100],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotonDialog(t_boton: "Guardar", accionBoton: accionGuardar),
                BotonDialog(t_boton: "Cancelar", accionBoton: accionCancelar),
              ],
            ),
          ],
        ),
      ),
    );
  }
}