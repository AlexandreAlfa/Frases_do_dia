import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Frase(),
));

class Frase extends StatefulWidget {
  @override
  _FraseState createState() => _FraseState();
}

class _FraseState extends State<Frase> {
  
  String _frase = '';
  var rd = Random();
  List _frases = ['Enfrente os problemas e leve a melhor!',
  'Dê mais atenção ao que você tem de bom na sua vida',
  'Para chegar ao topo, o que importa é começar!',
  'De nada adianta ter sonhos, se você não se empenhar em correr atrás',
  'Preste atenção nas oportunidades que estão à sua frente!',
  'Positividade para começar o dia é colocar a sua fé em prática',
  'Não deixe nada nem ninguém estragar o seu bom humor',
  'Ontem já passou, é hora de planejar o futuro',
  'Você pode não ter o melhor do mundo, mas tem muito pelo que agradecer!',
  'Não deixe sua felicidade nas mãos de ninguém!'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(3),
        width: double.infinity,
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          Image.asset('img/logo.png'),
          Text(''),
          Text(_frase??'',
          style: TextStyle(color: Colors.blueAccent,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 30,)
          ,textAlign: TextAlign.justify,),
          Text(''),
          RaisedButton(child: Text('Frase', style: TextStyle(
            color: Colors.white),),
            color: Colors.green,
          onPressed: (){
            setState(() {
              _frase = _frases[rd.nextInt(10)];
            });
          },)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
     ),
    );
  }
}