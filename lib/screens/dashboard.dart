import 'package:coffe_shop/providers/provider_fragment.dart';
import 'package:coffe_shop/utils/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('building Dashboard');
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Consumer<ProviderFragment>(
        builder: (context, value, child) {
          return value.currentFragmentGetter;
        },
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
