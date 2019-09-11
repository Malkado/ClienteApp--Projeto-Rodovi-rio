import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {

  final double height;
  const CheckIn({Key key, this.height}) : super(key: key);

  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Stack(
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
          margin: EdgeInsets.only(left: 40, top: 80, bottom: 35, right: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)
          ),
        ),
        Container(
          child: AppBar(

            title: Text("Check-In",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            backgroundColor: Colors.transparent,
            leading: Builder(
              builder: (BuildContext context){
                return IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 25),
                  onPressed: (){Navigator.pop(context);},

                );
              },
            )
          ),
        )],
    ));

  }
}
