import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:liones_app/Check-in.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int itemSelect=0;
  Widget _listMenu(){
    return ListView(
      children: <Widget>[
        _tiles("Home", Icons.home,0,(){}),
        _tiles("Milhas", Icons.monetization_on,1,(){}),
        _tiles("Gerencie sua viagem", Icons.directions_bus,2,(){}),
        _tiles("Check-In", Icons.check_circle_outline, 3, () {
          Navigator.of(context).push(_createRoute(3));
        }),
        _tiles("Configuração", Icons.settings,4,(){}),
        _tiles("Sair", Icons.arrow_back_ios,5,(){}),
      ],
    );
  }

  Route _createRoute(int op){
    switch(op){
      case 1:
        break;
      case 2:
        break;
      case 3:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => CheckIn(),
          transitionsBuilder: (context, animation, secondaryAnimation, child){
            var begin=Offset(0.0,2.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(begin: begin, end: end);
            var curvedAnimation = CurvedAnimation(parent: animation, curve: curve,);



            return SlideTransition(position: tween.animate(curvedAnimation),
              child: child,);
          },
        );
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;


    }
  }
  Widget _tiles(String text , IconData icon, int item, Function onTap){
    return ListTile(
      leading: Icon(icon,color: Colors.white, size: 20),
      onTap: onTap,
      selected: item== itemSelect,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white)),

    );

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundo_drawing.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: _listMenu(),
        ),
        ),
      );
  }
}
