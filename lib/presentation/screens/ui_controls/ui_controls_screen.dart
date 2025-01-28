import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Controls'),
      ),

      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car, plane, boat, submarine}
String metodoSeleccionado = '';

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })),

          ExpansionTile(
            title: const Text('Vehículo de transporte'),
            subtitle: Text('Método de trasnporte seleccionado: $metodoSeleccionado'),
            children: [
              RadioListTile(
            title: const Text('By Car'),
            subtitle: const Text('Viajar en auto'),
            value: Transportation.car, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.car;
              metodoSeleccionado = 'Auto';
            }),
          ),

          RadioListTile(
            title: const Text('By Plane'),
            subtitle: const Text('Viajar en avion'),
            value: Transportation.plane, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.plane;
              metodoSeleccionado = 'Avión';
            }),
          ),

          RadioListTile(
            title: const Text('By Boat'),
            subtitle: const Text('Viajar en barco'),
            value: Transportation.boat, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.boat;
              metodoSeleccionado = 'Barco';
            }),
          ),

          RadioListTile(
            title: const Text('By Submarine'),
            subtitle: const Text('Viajar en submarino'),
            value: Transportation.submarine, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.submarine;
              metodoSeleccionado = 'Submarino';
            }),
          ),
          ],
        ),

        ExpansionTile(
          title: Text('Food Options'),
          subtitle: Text('Selecto which foods you want to eat:'),
          children: [
            CheckboxListTile(
          title: Text('Wants breakfast'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),

        CheckboxListTile(
          title: Text('Wants lunch'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: Text('Wants dinner'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
          ],
        ),
      ],
    );
  }
}