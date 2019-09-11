
import 'package:flutter/material.dart';

class ScreenWidget extends StatefulWidget {

  final Function onTap;

  const ScreenWidget({Key key, this.onTap}) : super(key: key);

  @override
  _DrawerWidgetState createState() => new _DrawerWidgetState();
}

class _DrawerWidgetState extends State<ScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
      children: <Widget>[

        Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: AppBar(
            backgroundColor: Colors.transparent,
          leading: GestureDetector(
          onTap: widget.onTap,
              child: Icon(Icons.menu,
                size: 35,)
          ),
          ),
        )],
    ));
  }
}