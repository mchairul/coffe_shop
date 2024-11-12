import 'package:coffe_shop/providers/provider_user.dart';
import 'package:coffe_shop/routes_app.dart';
import 'package:coffe_shop/screens/launcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ProviderUser()
        )
      ],
      builder: (context, child) {
        return const MaterialApp(
          initialRoute: RouteApp.pageLauncher,
          onGenerateRoute: RouteApp.generateRoute,
          home: Launcher(),
        );
      },
    );
  }
}
