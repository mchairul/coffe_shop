import 'package:coffe_shop/routes_app.dart';
import 'package:flutter/material.dart';

class Launcher extends StatefulWidget {
  const Launcher({super.key});

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {

  @override
  void initState() {
    moveToWalkthrough();
    super.initState();
  }

  // pindah ke walkthrough dalam 2 detik
  moveToWalkthrough() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed(RouteApp.pageWalkThrough);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Launcher');
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text('Welcome', style: TextStyle(
              fontSize: 30
            ),),
            
            Text('v 1.0.0')
          ],
        ),
      ),
    );
  }
}
