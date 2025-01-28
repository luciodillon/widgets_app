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
   title: 'Progress Indicators',
   subTitle: 'Gotta wait',
   link: '/progress',
   icon: Icons.refresh_rounded,
  ), 

  MenuItem(
   title: 'SnackBars y Diálogos',
   subTitle: 'Indicadores en pantalla',
   link: '/snackbar',
   icon: Icons.info_outline,
  ), 

  MenuItem(
   title: 'Animated container',
   subTitle: 'Stateful widget animado',
   link: '/animated',
   icon: Icons.check_box_outline_blank,
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
   title: 'UI Controls',
   subTitle: 'Lets get to work',
   link: '/ui_controls',
   icon: Icons.control_point,
  ), 
];