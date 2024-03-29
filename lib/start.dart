import 'package:flutter/material.dart';
import 'package:liones_app/ListMenu.dart';
import 'package:liones_app/home.dart';
import 'package:liones_app/screen.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animationTranslate;
  Animation animationSize;
  Animation animationSizeBorder;


  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    animationTranslate = Tween(begin: 0.0, end: 300.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    animationTranslate.addListener(() {
      setState(() {});
    });

    animationSize = Tween(begin: 1.0, end: 0.8)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    animationSize.addListener(() {
      setState(() {});
    });

    animationSizeBorder = Tween(begin: 0.0, end: 10.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    animationSizeBorder.addListener(() {
      setState(() {});
    });
  }
  _onTapMenu(){
    if(controller.value==1){
      controller.reverse();
    }else{
      controller.forward();
    }
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DrawerWidget(), //widget do drawer
        Transform.scale(
          scale: animationSize.value,
          child: Container(
              transform: Matrix4.identity()
                ..translate(animationTranslate.value, 0.0),
              child: ClipRRect(
                  borderRadius:
                  BorderRadius.circular(animationSizeBorder.value),
                  child: ScreenWidget(
                    onTap: _onTapMenu,
                  ))),
        ) //tela inicial
      ],
    );
  }

}
