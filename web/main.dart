import 'dart:html';
import 'package:geolocation_tnk/geolocation.dart';
import 'package:js/js.dart';

void main(List<String> args) {
  GeolocationT.getCurrentPosition((e) {
    print(e.coords.longitude);
    print(e.coords.latitude);
  }, (e) => print(e),
      {"enableHighAccuracy": true, "timeout": 5000, "maximumAge": 0});
}
