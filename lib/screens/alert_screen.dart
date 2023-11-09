import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      //Esto hace que haciendo tab o clik fuera de la alerta esta se cierre
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la Alerta'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100 )
            ]
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('ok'),
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context) {

    showDialog(
      //Esto hace que haciendo tab o clik fuera de la alerta esta se cierre
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la Alerta'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100 )
            ]
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );

      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          //style: ElevatedButton.styleFrom(
          //  backgroundColor: Colors.red,
          //  shape: const StadiumBorder(),
          //  elevation: 0,
          //),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16),),
          ),
          //onPressed: () => displayDialogAndroid (context)
          onPressed: () => Platform.isAndroid 
          ? displayDialogAndroid (context)
          : displayDialogIOS (context)
          
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}