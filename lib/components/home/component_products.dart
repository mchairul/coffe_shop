import 'package:coffe_shop/models/model_product.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ComponentProducts extends StatelessWidget {
  const ComponentProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1/2,
      crossAxisSpacing: 8,
      padding: EdgeInsets.all(20),
      children: List.generate(listProducts.length, (index){
        ModelProduct data = listProducts[index];
        return Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(data.image!),
                          fit: BoxFit.cover
                      ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: null,
                ),
                SizedBox(height: 10,),
                Text(data.name!,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(height: 10,),
                Text(data.categoryName!,style: TextStyle(
                    color: Color(0xffA2A2A2),
                    fontSize: 18
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('\$ ${data.price.toString()}',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),),
                    Container(
                      height: 50,
                      width: 60,
                      //color: brownPrimary,
                      decoration: BoxDecoration(
                          color: brownPrimary,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
