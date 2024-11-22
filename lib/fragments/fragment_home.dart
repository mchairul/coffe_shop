import 'package:coffe_shop/components/home/component_search_form.dart';
import 'package:coffe_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class FragmentHome extends StatelessWidget {
  const FragmentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxisScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              pinned: true,
              forceElevated: innerBoxisScrolled,
              backgroundColor: Colors.red,
              title: const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location', style: TextStyle(
                        color: unactiveIcon
                    ),),
                  ],
                ),
              ),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      //stops: [0.4, 0.4],
                      colors: [Color(0xff313131),Color(0xff111111)]
                  )
                ),
                child: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.only(
                        top: 70,
                        left: 20,
                        right: 20
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const Text('Location'),
                        RichText(
                          text: TextSpan(
                              children: [
                                const WidgetSpan(
                                    child: Text('Blizen, Tanjung Balai ',
                                      style: TextStyle(
                                          color: Color(0xffD8D8D8),
                                          fontSize: 25,
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
                        ComponentSearchForm()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //ComponentSearchForm(),
              ],
            ),
          ),
        )
    );
  }
}
