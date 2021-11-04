import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sea_demo01/src/ui/compoment/compoment.dart';

import 'map_google.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MapGoogle(),
    );
  }
}
