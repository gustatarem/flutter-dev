import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      height: 340,
      width: MediaQuery.of(context).size.width - 32,
      margin: EdgeInsets.all(16),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 24),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      size: 36.0,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cartão de crédito",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        letterSpacing: 0.8,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "FATURA ATUAL",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "R\$",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 26,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "61",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 26,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          ",03",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 26,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Limite disponível: ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 0.5
                          ),
                        ),
                        Text(
                          "R\$1.000.000,00",
                          style: TextStyle(
                              color: Colors.lightGreenAccent,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
