import 'package:device_policy_manager/device_policy_manager.dart';

class LockScreenService {
  static Future<void> lockScreen() async {
    //check permissions
    bool granted = await DevicePolicyManager.isPermissionGranted();

    print(granted);

    // if no permission granted, request
    if (!granted) {
      bool isAdmin = await DevicePolicyManager.requestPermession(
        'com.example.snapcheck.DeviceAdminReceiver',
      );
      if (isAdmin) {
        await DevicePolicyManager.lockNow();
      }
    } else {
      await DevicePolicyManager.lockNow();
    }
  }
}
