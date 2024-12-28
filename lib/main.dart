import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodapp/core/utils/service/secret_keys.dart';
import 'package:foodapp/core/utils/service/service_locator.dart';
import 'package:foodapp/core/utils/service/shared_pref.dart';
import 'package:foodapp/food_app_body.dart';
import 'firebase_options.dart';

void main() async {


  
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = SecretKeys.publichKey;

  await SharedPref().initPreferences();

  ServiceLocator().setupServiceLocator();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: !kReleaseMode,
  ));
}
