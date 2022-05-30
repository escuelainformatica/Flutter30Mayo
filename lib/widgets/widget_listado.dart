import 'package:flutter/material.dart';
import 'package:mayo30/widgets/widget_listado_item.dart';

class WidgetListado extends StatefulWidget {
  List<dynamic>? valores;

  WidgetListado({Key? key,this.valores}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetListado();
  }
}


class _WidgetListado extends State<WidgetListado> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.valores?.length,
      itemBuilder: (BuildContext, fila) {
        var texto=widget.valores==null
            ? "sin texto"
            : widget.valores![fila]["texto"];
        var icon=widget.valores==null
            ? "sin texto"
            : widget.valores![fila]["icon"];
        var descripcion=widget.valores==null
            ? "sin texto"
            : widget.valores![fila]["descripcion"];
        return WidgetListadoItem(texto: texto,icono: icon,descripcion: descripcion,);
      },
    );
  }

}