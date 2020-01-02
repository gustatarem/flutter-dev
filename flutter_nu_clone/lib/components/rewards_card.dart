import 'package:flutter/material.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      height: 350,
      width: MediaQuery.of(context).size.width - 32,
      margin: EdgeInsets.all(16),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Center(
                  child: Icon(
                    Icons.card_giftcard,
                    color: Colors.grey[500],
                    size: 28.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Nubank Rewards",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Milliard',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 50, right: 50, top: 40),
                      child: Text(
                        "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
                        style: TextStyle(
                          fontFamily: 'Milliard',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(130, 50, 158, 2.0), width: 0.6),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 32),
                  height: 60,
                  width: 300,
                  child: Center(
                    child: Text(
                      "ATIVE O SEU REWARDS",
                      style: TextStyle(
                        fontFamily: 'Milliard',
                        color: Color.fromRGBO(130, 50, 158, 2.0),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
