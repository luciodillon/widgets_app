import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.account_box),
                label: Text('Outlined Icon')),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.text_fields_outlined),
                label: Text('Text Icon')),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.import_contacts_outlined)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.import_contacts_outlined),
              style: ButtonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
