import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:latlong2/latlong.dart';
import 'package:tecon_task/core/domain/domain.dart';

class MapView extends StatelessWidget {
  final Coordinates coordinates;
  final String actorName;
  MapView({Key? key, required this.coordinates, required this.actorName}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).backgroundColor, //change your color here
          ),
          title: Text(
            'Координаты',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(coordinates.latitude!, coordinates.longitude!),
                  zoom: 17.0,
                ),
                children: <Widget>[
                  TileLayerWidget(
                      options: TileLayerOptions(
                          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'])),
                  MarkerLayerWidget(
                      options: MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(coordinates.latitude!, coordinates.longitude!),
                        builder: (ctx) => Container(
                          child: Icon(
                            FontAwesome5.map_marker_alt,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesome5.map_marker_alt,
                        color: Colors.grey[850],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          actorName,
                          style: TextStyle(color: Colors.grey[850], fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
