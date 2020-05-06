import 'package:flutter/material.dart';
import 'package:trippas/tripform.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Body"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openTripForm();
        },
        tooltip: "Add trip",
        child: new Icon(Icons.add),
      ),
    );
  }

  void openTripForm() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TripForm()));
  }

  Color getColor(int tripType) {
    switch (tripType) {
      case 1:
        return Colors.deepPurpleAccent;
        break;

      case 2:
        return Colors.yellowAccent;
        break;

      case 3:
        return Colors.pink;
        break;

      default:
        return Colors.blueAccent;
    }
  }
}
