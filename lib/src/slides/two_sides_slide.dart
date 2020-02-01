import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {

  final Widget leftChild;
  final Widget rightChild;

  const TwoSidesSlide({Key key, this.leftChild, this.rightChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          // Left side
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.white,
              child: leftChild
            ),
          ),
          MediaQuery.of(context).size.width > 1024 ?
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                color: Theme.of(context).backgroundColor,
                child: rightChild
              ),
            ) :
            Container()
        ],
      )
    );
  }
}