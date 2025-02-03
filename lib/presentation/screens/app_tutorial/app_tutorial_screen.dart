import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Irure aute ex ullamco culpa id deserunt laboris nulla ad voluptate eu occaecat laborum.',
      'assets/Images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Eu ex tempor Lorem cupidatat anim commodo labore anim reprehenderit mollit ullamco irure laboris deserunt.',
      'assets/Images/2.png'),
  SlideInfo(
      'Disfurta la comida la comida',
      'Excepteur deserunt exercitation deserunt tempor sit aliquip id consectetur excepteur sint ea eu cillum.',
      'assets/Images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
                physics: const BouncingScrollPhysics(),
                children: slides
                    .map(
                      (slideData) => _Slide(
                          title: slideData.title,
                          caption: slideData.caption,
                          imageUrl: slideData.imageUrl),
                    )
                    .toList()),
            Positioned(
                top: 50,
                right: 0,
                child: TextButton(
                  child: Text('Skip Tutorial'),
                  onPressed: () => context.pop(),
                ))
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final tileStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(
              title,
              style: tileStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
