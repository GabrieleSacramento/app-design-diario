import 'package:design_diario/app_widget.dart';
import 'package:design_diario/src/shared/setup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerDependencies();
  runApp(const DesignDiarioApp());
}
