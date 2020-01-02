import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String label;
  final Widget icon;

  SmallCard({@required this.label, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      width: 95,
      height: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 4, top: 6),
            child: icon,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(left: 4, bottom: 6),
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'Milliard',
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
