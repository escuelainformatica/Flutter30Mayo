import 'package:flutter/material.dart';

class WidgetListadoItem extends  StatefulWidget {
  String? icono;
  String? texto;
  String? descripcion;

  WidgetListadoItem({Key? key,this.icono,this.texto,this.descripcion}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _WidgetListadoItem();
  }
}
class _WidgetListadoItem extends State<WidgetListadoItem> {
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
              child: Image.network("https://raw.githubusercontent.com/escuelainformatica/weather/main/${widget.icono}"),
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
                width: 260,
                height: 30,
                child: Text(widget.texto??"sin texto"),
              ),
              SizedBox(height: 20,),
              Container(
                width: 260,
                height: 30,
                child: Text(widget.descripcion??"sin descripcion"),
              )
            ],
          ),
        )

      ],
    );
  }

}