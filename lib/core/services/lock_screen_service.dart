import 'package:device_policy_manager/device_policy_manager.dart';

class LockScreenService {
  static Future<void> lockScreen() async {
    bool granted = await DevicePolicyManager.isPermissionGranted();

// Then, when; you want to lock:
    print(granted);
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
