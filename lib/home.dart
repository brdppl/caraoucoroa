import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:caraoucoroa/resultado.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _goToResult() {
    var options = ['Cara', 'Coroa'];
    var randomNumber = Random().nextInt(options.length);
    var result = options[randomNumber];

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => Resultado(result))
    // );

    // Rota nomeada
    Navigator.pushNamed(context, '/resultado', arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Image.asset('assets/img/logo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () => _goToResult(),
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    textColor: Color(0xff61bd86),
                    child: Text(
                      'JOGAR',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}