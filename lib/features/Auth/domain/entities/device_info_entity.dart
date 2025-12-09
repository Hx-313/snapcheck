class DeviceInfoEntity {
  final String deviceName;
  final String manufacturer;
  final String model;
  final String osVersion;
  final BatteryInfo battery;
  final NetworkInfo network;
  final DeviceLocation location;

  DeviceInfoEntity({
    required this.deviceName,
    required this.manufacturer,
    required this.model,
    required this.osVersion,
    required this.battery,
    required this.network,
    required this.location,
  });

  Map<String, dynamic> toJson() {
    return {
      'deviceName': deviceName,
      'manufacturer': manufacturer,
      'model': model,
      'osVersion': osVersion,
      'battery': {
        'isCharging': battery.isCharging,
        'batteryLevel': battery.batteryLevel,
        'batteryHealth': battery.batteryHealth,
      },
      'network': {
        'isConnected': network.isConnected,
        'connectionType': network.connectionType,
      },
      'location': {
        'latitude': location.latitude,
        'longitude': location.longitude,
      },
    };
  }
}

class BatteryInfo {
  final bool isCharging;
  final int batteryLevel;
  final String batteryHealth;
  const BatteryInfo({
    required this.isCharging,
    required this.batteryLevel,
    required this.batteryHealth,
  });
}

class NetworkInfo {
  final bool isConnected;
  final String connectionType;
  const NetworkInfo({
    required this.isConnected,
    required this.connectionType,
  });
}

class DeviceLocation {
  final double latitude;
  final double longitude;
  const DeviceLocation({
    required this.latitude,
    required this.longitude,
  });
}
