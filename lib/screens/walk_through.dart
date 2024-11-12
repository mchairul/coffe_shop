import 'package:coffe_shop/models/model_walk_through.dart';
import 'package:coffe_shop/routes_app.dart';
import 'package:coffe_shop/utils/constant.dart';
import 'package:flutter/material.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({super.key});

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  int positionPageView = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  initPageView() {
    pageController.addListener((){
      positionPageView = pageController.page!.toInt();
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('building WalkThrough');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.90,
            child: PageView.builder(
                controller: pageController,
                itemCount: walkthroughList.length,
                itemBuilder: (context, index) {
                  ModelWalkThrough data = walkthroughList[index];
                  return Stack(
                    children: [
                      Image.asset(data.image!),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.10,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Text(
                              data.title!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              data.subTitle!,
                              style: const TextStyle(
                                color: Color(0xffA2A2A2),
                                fontSize: 14
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
            )
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom:20,
            left: 20,
            right: 20
        ),
        child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(
                RouteApp.pageDashboard
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffC67C4E),
              padding: const EdgeInsets.all(20)
            ),
            child: const Text('Get Started',style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),)
        ),
      ),
    );
  }
}
