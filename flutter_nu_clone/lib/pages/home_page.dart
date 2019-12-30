import 'package:flutter/material.dart';
import 'package:flutter_nu_clone/components/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(130, 50, 158, 2.0),
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 88),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.8,
//                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Nu.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Gustavo Tatarem",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                CustomCard(
                  topLeftIcon: Icon(
                    Icons.credit_card,
                    size: 30.0,
                    color: Colors.grey[500],
                  ),
                  topLeftLabel: "Cartão de crédito",
                  midTopLabel: Text(
                    "FATURA ATUAL",
                    style: TextStyle(
                        color: Color(0xFF00BCC9),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                  midMidLabel: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "R\$ ",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Color(0xFF00BCC9),
                              fontSize: 30,
                              fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "2607",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Color(0xFF00BCC9),
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: ",00",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Color(0xFF00BCC9),
                              fontSize: 30,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  midBotLabel: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Limite disponível: ",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 0.5),
                        ),
                        TextSpan(
                          text: "R\$",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Color(0xFF9FBF2C),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        TextSpan(
                          text: "3.112.018,00",
                          style: TextStyle(
                              fontFamily: 'Milliard',
                              color: Color(0xFF9FBF2C),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                      ],
                    ),
                  ),
                  bottomLeftIcon: Icon(
                    Icons.shopping_cart,
                    color: Colors.grey[500],
                  ),
                  bottomLabel:
                      "Compra mais recente em Tatarem's Market no valor de R\$333,00 quinta",
                  bottomRightIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                  hasChart: true,
                ),
                CustomCard(
                  topLeftIcon: Icon(
                    Icons.monetization_on,
                    size: 28.0,
                    color: Colors.grey[500],
                  ),
                  topLeftLabel: "NuConta",
                  midTopLabel: Text(
                    "Saldo disponível",
                    style: TextStyle(
                      fontFamily: 'Milliard',
                      color: Colors.grey[500],
                      fontSize: 16,
                      letterSpacing: 0.3,
                    ),
                  ),
                  midMidLabel: Text(
                    "R\$ 201.220,01",
                    style: TextStyle(
                      fontFamily: 'Milliard',
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  midBotLabel: Container(
                    height: 0,
                    width: 0,
                  ),
                  bottomLeftIcon: Icon(
                    Icons.credit_card,
                    size: 26.0,
                    color: Colors.grey[500],
                  ),
                  bottomLabel:
                      "Pagamento da fatura realizado no valor de R\$230.720,16 ontem",
                  bottomRightIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                  hasChart: false,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
