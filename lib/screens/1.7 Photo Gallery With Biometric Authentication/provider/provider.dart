import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier {
  final auth = LocalAuthentication();
  bool isVerified = false;

  Future<void> authentication() async {
    bool isDeviceSupport = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;

    if (isDeviceSupport && isActive) {
      await auth.authenticate(localizedReason: 'Please Add Your Finger....');
      isVerified = true;
      notifyListeners();
    } else {
      isVerified = false;
      notifyListeners();
    }
  }
}
