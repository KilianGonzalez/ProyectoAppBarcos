import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ItemReserva extends StatelessWidget {
  final String textores;
  final String textoact;
  final bool valorCheckbox;
  final Function(bool?)? cambiaValorCheckbox;
  final Function(BuildContext)? borrarReserva;

  const ItemReserva({
    super.key,
    required this.textores,
    required this.textoact,
    required this.valorCheckbox,
    required this.cambiaValorCheckbox,
    required this.borrarReserva,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(), 
          children: [
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              onPressed: borrarReserva,
            ),
          ]
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Checkbox
                Checkbox(
                  activeColor: Colors.blue[200],
                  checkColor: Colors.blue[800],
                  side: BorderSide(
                    color: Colors.blue[800]!,
                    width: 2,
                  ),
                  value: valorCheckbox,
                  onChanged: cambiaValorCheckbox,
                ),
            
                //Texto
                Text(
                  textores,
                  style: TextStyle(
                    color: Colors.white,
                    decoration: valorCheckbox ? TextDecoration.lineThrough : TextDecoration.none,
                    decorationColor: Colors.red,
                    decorationThickness: 4, 
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    textoact,
                    style: TextStyle(
                      color: Colors.white,
                      decoration: valorCheckbox ? TextDecoration.lineThrough : TextDecoration.none,
                      decorationColor: Colors.red,
                      decorationThickness: 4, 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}