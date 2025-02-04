import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const String name = 'infinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemBuilder: (context, index) {
        return FadeInImage(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
          placeholder: AssetImage('assets/Images/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/id/1/500/300')
        );
      },
    ));
  }
}
