import 'package:coffe_shop/components/home/component_banner_promo.dart';
import 'package:coffe_shop/components/home/component_category_button.dart';
import 'package:coffe_shop/components/home/component_search_form.dart';
import 'package:coffe_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class FragmentHome extends StatelessWidget {
  const FragmentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF9F9F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      //stops: [0.4, 0.4],
                      colors: [Color(0xff313131),Color(0xff111111)]
                  )
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Location', style: TextStyle(
                        color: unactiveIcon
                    ),),
                    RichText(
                      text: TextSpan(
                          children: [
                            const WidgetSpan(
                                child: Text('Blizen, Tanjung Balai ',
                                  style: TextStyle(
                                      color: Color(0xffD8D8D8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            WidgetSpan(
                                child:IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.arrow_drop_down)
                                )
                            )
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    ComponentSearchForm(),
                  ],
                ),
              ),
            ),
            ComponentBannerPromo(),
            SizedBox(height: 20,),
            Container(
              height: 50,
              child: ComponentCategoryButton(),
            )
          ],
        ),
      )
    );
  }
}
