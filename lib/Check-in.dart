import 'package:flutter/cupertino.dart';
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

    return  Scaffold(
      resizeToAvoidBottomInset : false,
      body: Stack(
        children: <Widget>[

         Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
           Container(
             child: AppBar(
              title: Text("Check-In",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              backgroundColor: Colors.transparent.withOpacity(0),
              leading: Builder(
                builder: (BuildContext context){
                  return IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 25),
                    onPressed: (){Navigator.pop(context);},

                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25,top: 120, right:  25 ,bottom:  75),
            alignment: Alignment.center,
            color: Colors.white,
            child: SingleChildScrollView(


            padding: EdgeInsets.only(top: 50,bottom: 50,right: 20,left: 20),

              child:Column(


              children: <Widget>[
                Center(
                  child: Icon(Icons.check_circle_outline,color: Colors.green,size: 60),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 25,top: 15),
                  child: Text("Check-In pela reserva",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 10
                        ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      labelText: "Digite o código reserva",
                      hintText: "Cód. reserva",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(

                          color: Colors.blue,
                          width: 10
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      labelText: "Digite sua partida",
                      hintText: "Partida",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                  child: ButtonTheme(
                    height: 40,
                    minWidth: double.infinity,
                    buttonColor: Colors.blue,
                    child: MaterialButton(
                      color: Colors.blue,
                      elevation: 4,
                      onPressed: (){},
                      child: Text('Check-In',style: TextStyle(fontSize: 25,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),

        ],
      ),



      /*appBar: AppBar(
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
        body: Container(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: FormCenter(),
          ),

        ),






         *//* new Container(

          margin: EdgeInsets.only(left: 40, top: 80, bottom: 35, right: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)),
        ),*//*
*/

    );

  }
}
class FormCenter extends StatefulWidget {
  @override
  _FormCenterState createState() => _FormCenterState();
}

class _FormCenterState extends State<FormCenter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Container(


            ),
          ),
        ],
    );
  }
}
