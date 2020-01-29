import 'package:flutter/material.dart';

logoWidget() {
  return Positioned(
    top: 60.0,
    left: 20.0,
    child: Container(
      width: 400,
      child: Hero(
          tag: 'logoLeft', child: Image.asset('assets/images/logo_bigger.png')),
    ),
  );
}

albertoWidget() {
  return Positioned(
    top: 260.0,
    left: 60.0,
    child: Hero(
      tag: 'alberto',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image(
          image: AssetImage('assets/images/alberto.png'),
          height: 80,
          width: 80,
        )
      ),
    )
  );
}
