import 'package:flutter/material.dart';

class ComponentBannerPromo extends StatelessWidget {
  const ComponentBannerPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/banner-promo.png"),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text('ini'),
      ),
    );
  }
}
