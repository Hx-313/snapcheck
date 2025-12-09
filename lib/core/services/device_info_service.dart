import 'dart:convert';

import 'package:permission_handler/permission_handler.dart';
import 'package:phone_info/phone_info.dart';
import 'package:snapcheck/features/Auth/domain/entities/device_info_entity.dart';

class DeviceInfoService {
  static Future<void> getDeviceInfo() async {
    try {
      getPermissions();
      final phoneInfo = await PhoneInfoPlugin.getPhoneInfo();
      DeviceInfoEntity deviceInfoEntity;
      if (phoneInfo.isNotEmpty) {
        deviceInfoEntity = DeviceInfoEntity(
          deviceName: phoneInfo['deviceName'] ?? 'Unknown',
          manufacturer: phoneInfo['manufacturer'] ?? 'Unknown',
          model: phoneInfo['model'] ?? 'Unknown',
          osVersion: phoneInfo['osVersion'] ?? 'Unknown',
          battery: BatteryInfo(
            isCharging: phoneInfo['batteryInfo']['isCharging'] ?? false,
            batteryLevel: phoneInfo['batteryInfo']['batteryLevel'] ?? 0,
            batteryHealth: phoneInfo['batteryInfo']['health'] ?? 'Unknown',
          ),
          network: NetworkInfo(
            isConnected: phoneInfo['isConnected'] ?? false,
            connectionType: phoneInfo['connectionType'] ?? 'Unknown',
          ),
          location: DeviceLocation(
            latitude: 0.0,
            longitude: 0.0,
          ),
        );

        print('Device Info Entity: ${jsonEncode(deviceInfoEntity.toJson())}');
      }
    } catch (e) {
      print('Error fetching device info: $e');
    }
  }

  static Future<void> getPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.phone,
      Permission.camera,
      Permission.location,
      Permission.storage
    ].request();

    if (await Permission.manageExternalStorage.isDenied) {
      await Permission.manageExternalStorage.request();
    }

    if (await Permission.sensors.isDenied || statuses.isNotEmpty) {
      await Permission.sensors.request();
    }
  }
}
