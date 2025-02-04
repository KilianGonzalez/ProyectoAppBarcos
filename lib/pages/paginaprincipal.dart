import 'package:flutter/material.dart';
import 'package:proyectoappbarcos/components/appbar.dart';
import 'package:proyectoappbarcos/components/drawerpers.dart';

class Paginaprincipal extends StatelessWidget {
  const Paginaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarP(),
      endDrawer: Drawerpers(),
    );
  }
}