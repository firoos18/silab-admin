import 'package:flutter/material.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  AppConfig.create(
    appName: "SILAB Admin",
    baseUrl: "https://silab.vercel.app",
    flavor: Flavor.prod,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
