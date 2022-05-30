import 'package:flutter/material.dart';

class WidgetPlaceholderListadoItem extends StatefulWidget {
  const WidgetPlaceholderListadoItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetPlaceholderListadoItem();
  }
}

class _WidgetPlaceholderListadoItem
    extends State<WidgetPlaceholderListadoItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      //verticalDirection: VerticalDirection.up,
      children: [
        Container(
            padding: const EdgeInsets.only(left:20,top:  20,right: 0,bottom: 20),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            )
        ),
        SizedBox(width: 20,),
        Container(
          padding: const EdgeInsets.only(left:0,top:  20,right: 0,bottom: 20),
          alignment: Alignment.topLeft,
          //color:Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                  child: Container(
                    width: 260,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  child: Container(
                    width: 260,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  )
              )
            ],
          ),
        )

      ],
    );
  }
}
