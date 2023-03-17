
import 'package:flutter/material.dart';



class PreExamen extends StatefulWidget {
  const PreExamen({Key? key}) : super(key: key);
  @override
  State<PreExamen> createState() => _PreExamenState();
}


class _PreExamenState extends State<PreExamen> {

  List _imagenes = [
    "assets/amazon.png","assets/facebook.png","assets/google.png",
    "assets/hp.png","assets/youtube.png"];
  int _indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Carrucel de aplicaciones",style: TextStyle(fontSize: 30,color: Colors.red),),
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: Image.asset(_imagenes[_indice]),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                avanzar();
              }, child: const
              Text("Siguiente")),
              SizedBox(width: 40,),
              ElevatedButton(onPressed: (){
                retroceder();
              }, child: const
              Text("Anterior"))
            ],
          )
        ],
      )

    );
  }
  void avanzar(){
    setState(() {
      _indice++;
      if(_indice==_imagenes.length){
        _indice=0;
      }
    });
  }

  void retroceder(){
    setState(() {
      _indice--;
      if(_indice<0){
        _indice = _imagenes.length-1;
      }
    });
  }
}
