import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget topLeftIcon;
  final String topLeftLabel;
  final Widget midTopLabel;
  final Widget midMidLabel;
  final Widget midBotLabel;
  final Widget bottomLeftIcon;
  final String bottomLabel;
  final Widget bottomRightIcon;
  final Widget child;
  final bool hasChart;

  CustomCard(
      {@required this.topLeftIcon,
      @required this.topLeftLabel,
      @required this.midTopLabel,
      @required this.midMidLabel,
      @required this.bottomLeftIcon,
      @required this.bottomLabel,
      @required this.bottomRightIcon,
      @required this.hasChart,
      this.child,
      this.midBotLabel});

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
          hasChart
              ? Positioned(
                  right: 16,
                  top: 24,
                  bottom: 100,
                  child: Container(
                    height: double.infinity,
                    width: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              height: constraints.maxHeight * 0.35,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                                color: Color(0xFFF29F05),
                              ),
                            ),
                            Container(
                              height: constraints.maxHeight * 0.15,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Color(0xFF00BCC9),
                              ),
                            ),
                            Container(
                              height: constraints.maxHeight * 0.50,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color(0xFF9FBF2C),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                )
              : Container(
                  height: 0,
                  width: 0,
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 24),
                child: Row(
                  children: <Widget>[
                    topLeftIcon,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      topLeftLabel,
                      style: TextStyle(
                        fontFamily: 'Milliard',
                        color: Colors.grey[500],
                        fontSize: 12,
                        letterSpacing: 0.3,
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
              Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          midTopLabel,
                          Row(
                            children: <Widget>[
                              midMidLabel,
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              midBotLabel,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, right: 16, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: bottomLeftIcon,
                    ),
                    Expanded(
                      flex: 14,
                      child: LimitedBox(
                        maxWidth: MediaQuery.of(context).size.width / 1.5,
                        child: Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Text(
                            bottomLabel,
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: 'Milliard',
                                color: Colors.black87,
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.5),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: bottomRightIcon,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
