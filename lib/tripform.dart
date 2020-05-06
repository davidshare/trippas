import 'package:flutter/material.dart';
import 'package:trippas/models/trip.dart';

class TripForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TripFormState();
}

class _TripFormState extends State<TripForm> {
  Trip trip;

  TextEditingController departureControl = TextEditingController();
  TextEditingController departureDateControl = TextEditingController();
  TextEditingController departureTimeControl = TextEditingController();
  TextEditingController destinationControl = TextEditingController();
  TextEditingController destinationDateControl = TextEditingController();
  TextEditingController destinationTimeControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    Future getDate() {
      return showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light(),
            child: child,
          );
        },
      );
    }

    Future getTime() {
      return showTimePicker(
        initialTime: TimeOfDay.now(),
        context: context,
      );
    }

    void callDatePicker() async {
      var order = await getDate();
    }

    void callTimePicker() async{
      var time = await getTime();
    }

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text("Create a trip", style: TextStyle(color: Colors.black)),
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  TextField(
                    controller: departureControl,
                    style: textStyle,
                    onChanged: (value) => updateDeparture(),
                    decoration: InputDecoration(
                      labelText: "Enter Depature",
                      labelStyle: textStyle,
                    ),
                  ),
                  TextField(
                    controller: departureDateControl,
                    style: textStyle,
                    onChanged: (value) => updateDepartureDate(),
                    onTap: callDatePicker,
                    decoration: InputDecoration(
                      labelText: "Enter Date",
                      labelStyle: textStyle,
                    ),
                  ),
                  TextField(
                    controller: departureTimeControl,
                    style: textStyle,
                    onTap: callTimePicker,
                    onChanged: (value) => updateDepartureTime(),
                    decoration: InputDecoration(
                      labelText: "Enter Time",
                      labelStyle: textStyle,
                    ),
                  ),
                  TextField(
                    controller: destinationControl,
                    style: textStyle,
                    onTap: () => {},
                    onChanged: (value) => updateDestination(),
                    decoration: InputDecoration(
                      labelText: "Enter Destination",
                      labelStyle: textStyle,
                    ),
                  ),
                  TextField(
                    controller: destinationDateControl,
                    style: textStyle,
                    onChanged: (value) => updateDestinationDate(),
                    onTap: callDatePicker,
                    decoration: InputDecoration(
                      labelText: "Enter Date",
                      labelStyle: textStyle,
                    ),
                  ),
                  TextField(
                    controller: destinationTimeControl,
                    style: textStyle,
                    onChanged: (value) => updateDestinationTime(),
                    onTap: callTimePicker,
                    decoration: InputDecoration(
                      labelText: "Enter Time",
                      labelStyle: textStyle,
                    ),
                  ),
                  new RaisedButton(
                    onPressed: () => updateTitle(),
                    color: Colors.blueAccent,
                    child: new Text('Add trip',
                        style: TextStyle(color: Colors.white)),
                  ),
                ])
              ],
            )));
  }

  void updateTitle() {}

  void updateDeparture() {
    trip.departure = departureControl.text;
  }
  
  void updateDepartureTime() {
    trip.departureTime = departureTimeControl.text;
  }

  void updateDepartureDate() {
    trip.departureDate = departureDateControl.text;
  }

  void updateDestination() {
    trip.destination = destinationControl.text;
  }
  
  void updateDestinationTime() {
    trip.destinationTime = destinationTimeControl.text;
  }

  void updateDestinationDate() {
    trip.destinationDate = destinationDateControl.text;
  }
}
