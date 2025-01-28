import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Eiusmod sunt do sint mollit proident in consectetur ex do consequat sit incididunt consequat.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbars y Diálogos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    showAboutDialog(
                        barrierDismissible: false,
                        context: context,
                        children: [
                          Text(
                              'Voluptate sit excepteur amet culpa do fugiat do velit exercitation deserunt culpa consequat fugiat et.')
                        ]);
                  },
                  child: const Text('Licencias usadas')),
              FilledButton.tonal(
                  onPressed: () => openDialog(context),
                  child: const Text('Mostrar diálogo')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: Icon(Icons.remove_red_eye),
          onPressed: () => showCustomSnackbar(context),
        ));
  }
}
