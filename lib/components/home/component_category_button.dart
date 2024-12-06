import 'package:coffe_shop/models/model_category_button.dart';
import 'package:coffe_shop/providers/provider_fragment.dart';
import 'package:coffe_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ComponentCategoryButton extends StatelessWidget {
  const ComponentCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Building ComponentCategoryButton');
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index){
          ModelCategoryButton data = categoryList[index];
          return Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Consumer<ProviderFragment>(
              builder: (context, value, child) {
                return Container(
                  width: 200,
                  //height: 100,
                  decoration: BoxDecoration(
                      color: value.currentCategoryGetter == data.id ?
                              brownPrimary : Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      context.read<ProviderFragment>().setCurrentCategory = data.id! ;
                    },
                    child: Text(
                      data.name!,
                      style: TextStyle(
                          color: value.currentCategoryGetter == data.id ?
                                  Colors.white : Colors.black
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
