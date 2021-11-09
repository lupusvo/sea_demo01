import 'package:flutter/material.dart';
import 'package:sea_demo01/src/repositories/pin_pill_info.dart';

class MapPinPillComponent extends StatefulWidget {
  double pinPillPosition;
  PinInformation currentlySelectedPin;

  MapPinPillComponent(
      {required this.pinPillPosition, required this.currentlySelectedPin});

  @override
  State<StatefulWidget> createState() => MapPinPillComponentState();
}

class MapPinPillComponentState extends State<MapPinPillComponent> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: widget.pinPillPosition,
      right: 0,
      left: 0,
      duration: Duration(milliseconds: 200),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(20),
          height: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 20,
                    offset: Offset.zero,
                    color: Colors.grey.withOpacity(0.5))
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Icon(
                                Icons.circle,
                                color: widget.currentlySelectedPin.labelColor,
                                size: 12,
                              ),
                            ),
                            Text(widget.currentlySelectedPin.vehicalNumber,
                                style: TextStyle(
                                    color: widget
                                        .currentlySelectedPin.labelColor)),
                          ],
                        ),
                        const SizedBox(
                          height: 5, // default\minimum height
                        ),
                        Text(
                            'Cập nhật: ${widget.currentlySelectedPin.timeSave}',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade700)),
                        const SizedBox(
                          height: 3, // default\minimum height
                        ),
                        Text(
                            'Vị trí: ${widget.currentlySelectedPin.location.latitude.toString()}, ${widget.currentlySelectedPin.location.longitude.toString()}',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade700)),
                        SizedBox(
                          height: 3, // default\minimum height
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Text(
                            'Địa chỉ: ${widget.currentlySelectedPin.address}',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade700),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(widget.currentlySelectedPin.pinPath,
                    width: 50, height: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
