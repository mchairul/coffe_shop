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
          image: const DecorationImage(
              image: AssetImage("assets/images/banner-promo.png"),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 20,
              top: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffED5151)
                  ),
                  child: Text('Promo', style: TextStyle(color: Colors.white),)
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                        width: 200,
                        height:30,
                        decoration: BoxDecoration(
                            color: Color(0xff111111)
                        ),
                        child: null
                    ),
                    Positioned(
                      child: Text('Buy one get',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                        width: 170,
                        height:30,
                        decoration: BoxDecoration(
                            color: Color(0xff111111)
                        ),
                        child: null
                    ),
                    Positioned(
                      child: Text('one FREE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
