//  Client API for browsing Bluetooth LE device
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import '../models/models.dart';

class DeviceApiClient {
  Future<int> getLocationId(String city) async {
    return 0;
  }

  Future<Device> fetchDevice(int locationId) async {
    final device = Device(
      condition: DeviceCondition.clear,
      formattedCondition: 'formattedCondition',
      minTemp: 0,
      temp: 50,
      maxTemp: 99,
      locationId: 0,
      lastUpdated: DateTime.now(),
      location: 'location'
    );
    return device;
  }
}

/*
final locationUrl = '$baseUrl/api/location/search/?query=$city';
final locationResponse = await this.httpClient.get(locationUrl);
if (locationResponse.statusCode != 200) {
  throw Exception('error getting locationId for city');
}

final locationJson = jsonDecode(locationResponse.body) as List;
return (locationJson.first)['woeid'];

final DeviceUrl = '$baseUrl/api/location/$locationId';
final DeviceResponse = await this.httpClient.get(DeviceUrl);

if (DeviceResponse.statusCode != 200) {
  throw Exception('error getting Device for location');
}

final DeviceJson = jsonDecode(DeviceResponse.body);
return Device.fromJson(DeviceJson);
*/