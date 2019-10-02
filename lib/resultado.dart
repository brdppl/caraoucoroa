import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String result;
  Resultado(this.result);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  var _image = 'assets/img/cara.png'; 

  void _back() {
    Navigator.pop(context);
  }

  void _showResult() {
    if(widget.result == 'Cara') {
      setState(() {
        this._image = 'assets/img/moeda_cara.png';
      });
    } else {
      setState(() {
        this._image = 'assets/img/moeda_coroa.png';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _showResult();
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
                child: Image.asset(this._image),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: _back,
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    textColor: Color(0xff61bd86),
                    child: Text(
                      'VOLTAR',
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