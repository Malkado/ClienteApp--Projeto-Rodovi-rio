import 'package:flutter/material.dart';
import 'package:liones_app/ListMenu.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




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


              actions: <Widget>[

                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: (){},
                  tooltip: 'Perfil',
                  iconSize: 35,
                )

              ],
              backgroundColor: Colors.transparent,
             leading: Builder(
                 builder: (BuildContext context){

                   return IconButton(
                     icon: Icon(Icons.menu),
                     iconSize: 35,
                     onPressed: (){},
                   );
                 },
             ),
            ),

          ),


        ],
      ),
    );
  }
}

