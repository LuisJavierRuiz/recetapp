import 'package:flutter/material.dart';
import 'package:recetapp/page/acerca_de.dart';
import 'package:recetapp/models/flutter_flow_icon_buton.dart';
import 'package:recetapp/models/flutter_flow_theme.dart';

class EliminarEditarWidget extends StatefulWidget {
  const EliminarEditarWidget({Key? key}) : super(key: key);

  @override
  _EliminarEditarWidgetState createState() => _EliminarEditarWidgetState();
}

class _EliminarEditarWidgetState extends State<EliminarEditarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFDF4EB),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AcercaDeWidget()),
          );
        },
        backgroundColor: Color(0xFFFF5C00),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryBtnText,
        automaticallyImplyLeading: false,
        title: Text(
          'Lista de Recetas',
          style: FlutterFlowTheme
              .of(context)
              .title1
              .override(
            fontFamily: 'Poppins',
            color: Color(0xFFFF5C00),
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      body: GestureDetector(),
    );
  }
}