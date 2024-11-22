import 'package:coffe_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class ComponentSearchForm extends StatefulWidget {
  const ComponentSearchForm({super.key});

  @override
  State<ComponentSearchForm> createState() => _ComponentSearchFormState();
}

class _ComponentSearchFormState extends State<ComponentSearchForm> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.white,),
              hintText: 'Search Coffe',
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              fillColor: Color(0xff2A2A2A),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  //width: 1,
                  color: Color(0xff2A2A2A)
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                    color: Color(0xff2A2A2A)
                ),
              )
            ),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          flex: 1,
            child: Container(
              height: 60,
              width: 60,
              color: brownPrimary,
              child: MaterialButton(
                  onPressed: (){},
                child: Icon(Icons.settings),
              ),
            )
        )
      ],
    );
  }
}

