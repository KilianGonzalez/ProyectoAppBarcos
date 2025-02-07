import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: Text("Fiestas",style: TextStyle(color: Colors.white, fontSize: 20),),
          value: isChecked1,
          onChanged: (bool? value) {
            setState(() {
              isChecked1 = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          title: Text("Turismo",style: TextStyle(color: Colors.white, fontSize: 20),),
          value: isChecked2,
          onChanged: (bool? value) {
            setState(() {
              isChecked2 = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          title: Text("En Familia",style: TextStyle(color: Colors.white, fontSize: 20),),
          value: isChecked3,
          onChanged: (bool? value) {
            setState(() {
              isChecked3 = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          title: Text("Cumpleaños", style: TextStyle(color: Colors.white, fontSize: 20),),
          value: isChecked4,
          onChanged: (bool? value) {
            setState(() {
              isChecked4 = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ],
    );
  }
}