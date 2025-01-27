import 'dart:ffi';

import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackbar = ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Diálogos'),
      ),

      floatingActionButton: FloatingActionButton.extended( 
        label: const Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
      ),

      body: _SnackbarView(),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}