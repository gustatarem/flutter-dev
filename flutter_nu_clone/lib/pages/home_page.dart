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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              "Nu.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          "Gustavo Tatarem",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.2,
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
              ),
            ],
          ),
        ),
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                CustomCard(),
                CustomCard(),
                CustomCard(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
