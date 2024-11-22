import 'package:coffe_shop/providers/provider_fragment.dart';
import 'package:coffe_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('building BottomNav');
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(100)
        )
      ),
      child: Consumer<ProviderFragment>(
          builder: (context, value, child) {
            return ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              ),
              child: BottomAppBar(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: (){
                            value.setCurrentIndexFromBottonNav(0);
                          },
                          icon: const Icon(Icons.home),
                          color: value.getCurrentIndex == 0 ?
                          brownPrimary : unactiveIcon,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: (){
                            value.setCurrentIndexFromBottonNav(1);
                          },
                          icon: const Icon(Icons.heart_broken),
                          color: value.getCurrentIndex == 1 ?
                          brownPrimary : unactiveIcon,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
