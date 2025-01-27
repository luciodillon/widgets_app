import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
   title: 'Botones',
   subTitle: 'Varios botones en Flutter',
   link: '/buttons',
   icon: Icons.smart_button_outlined, 
  ),

  MenuItem(
   title: 'Tarjetas',
   subTitle: 'Un contenedor estilizado',
   link: '/cards',
   icon: Icons.credit_card, 
  ),

  MenuItem(
   title: 'Animated',
   subTitle: 'Buenas animaciones',
   link: '/animated',
   icon: Icons.animation_outlined,
  ), 

  MenuItem(
   title: 'Tutorial',
   subTitle: 'Hay que aprender!',
   link: '/tutorial',
   icon: Icons.book,
  ), 

  MenuItem(
   title: 'Infinite Scroll',
   subTitle: 'Hacia el infinito y mas alla!',
   link: '/infinite',
   icon: Icons.casino_rounded,
  ), 

  MenuItem(
   title: 'SnackBar',
   subTitle: 'Yum',
   link: '/snackbar',
   icon: Icons.food_bank,
  ), 

  MenuItem(
   title: 'Progress',
   subTitle: 'Gotta wait',
   link: '/progress',
   icon: Icons.bar_chart_rounded,
  ), 

  MenuItem(
   title: 'UI Controls',
   subTitle: 'Lets get to work',
   link: '/ui_controls',
   icon: Icons.control_point,
  ), 
];