class Trip{
  int _id;
  String _departure;
  String _departureDate;
  String _departureTime;
  String _destination;
  String _destinationDate;
  String _destinationTime;


  Trip(this._departure, this._departureDate, this._departureTime, this._destination, this._destinationDate, this._destinationTime); 
  Trip.withId(this._id, this._departure, this._departureDate, this._departureTime, this._destination, this._destinationDate, this._destinationTime); // the description in square brackets indicates that it is optional
// the description in square brackets indicates that it is optional

  // Define getters
  int get id => _id;
  String get departure => _departure;
  String get departureDate => _departureDate;
  String get departureTime => _departureTime;
  String get destination => _destination;
  String get destinationDate => _destinationDate;
  String get destinationTime => _destinationTime;

  set departure(String newDeparture){
    if(newDeparture.length <= 255 ){
      _departure = newDeparture;
    }
  }

  set departureDate(String newDepartureDate){
    if(newDepartureDate.length <= 255 ){
      _departureDate = newDepartureDate;
    }
  }

  set departureTime(String newDepartureTime){
    if(newDepartureTime.length <= 255 ){
      _departureTime = newDepartureTime;
    }
  }

  set destination(String newDestination){
    if(newDestination.length <= 255 ){
      _destination = newDestination;
    }
  }

  set destinationDate(String newDestinationDate){
    if(newDestinationDate.length <= 255 ){
      _destinationDate = newDestinationDate;
    }
  }

  set destinationTime(String newDestinationTime){
    if(newDestinationTime.length <= 255 ){
      _destinationTime = newDestinationTime;
    }
  }

  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map["departure"] = _departure;
    map["departureDate"] = _departureDate;
    map["departureDateTime"] = _departureTime;
    map["destination"] = _destination;
    map["destinationDate"] = _destinationDate;
    map["destinationTime"] = _destinationTime;

    if(_id != null){
      map["id"] = _id;
    }

    return map;
  }

  Trip.fromObject(dynamic o){
    this._id = o["id"];
    this._departure = o["departure"];
    this._departureDate = o["departureDate"];
    this._departureTime = o["departureTime"];
    this._departure = o["destination"];
    this._destinationTime = o["destinationTime"];
    this._destinationDate = o["destinationDate"];
  }

}