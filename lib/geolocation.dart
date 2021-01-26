@JS()
library geolocation_tnk;

import 'package:js/js.dart';

@JS('window.navigator.geolocation')
abstract class _GeolocationT {
  @JS('getCurrentPosition')
  external static void getCurrentPosition(
      void Function(_GeolocationTPositionT) success,
      void Function(dynamic) error,
      Object object);
}

abstract class GeolocationT {
  static getCurrentPosition(void Function(_GeolocationTPositionT) a,
      [dynamic b, Object object]) {
    return _GeolocationT.getCurrentPosition(
        allowInterop(a), allowInterop(b), object);
  }
}

@JS('window.GeolocationPosition')
abstract class _GeolocationTPositionT {
  external get timestamp;
  external _GeolocationTCoordinatesT get coords;
}

@JS('window.GeolocationCoordinates')
abstract class _GeolocationTCoordinatesT {
  external double get latitude;

  external double get longitude;

  external double get altitude;

  external double get altitudeAccuracy;

  external double get heading;

  external double get speed;
}
