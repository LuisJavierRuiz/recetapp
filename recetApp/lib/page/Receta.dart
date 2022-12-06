import '../models/flutter_flow_icon_buton.dart';
import '../models/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import '../services/firebase_crud.dart';
import '../models/recetaa.dart';
import 'package:google_fonts/google_fonts.dart';

class RecetaWidget extends StatefulWidget {
  const RecetaWidget({Key? key, this.recetas}) : super(key: key);
  final Recetas? recetas;
  @override
  _RecetaWidgetState createState() => _RecetaWidgetState();
}

class _RecetaWidgetState extends State<RecetaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFDF4EB),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: FlutterFlowTheme.of(context).primaryBtnText,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFFFF5C00),
            size: 30,
          ),
          onPressed: () async {
            if(Navigator.canPop(context) == true) {
              Navigator.pop(context);
            }
          },
        ),
        title: Text(
          widget.recetas!.nombre.toString(),
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Color(0xFFFF5C00),
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        widget.recetas!.imagen.toString(),
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
              Material(
                color: Colors.transparent,
                elevation: 1,
                child: ClipRRect(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                              'Tiempo',
                              style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFF5C00),
                              ),
                            ),
                        Text(
                          widget.recetas!.tiempo.toString(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                            'Ingredientes',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFFF5C00),
                            ),
                          ),
                      Text(
                        widget.recetas!.ingredientes.toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                    ],
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                            'Preparacion',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFFF5C00),
                            ),
                          ),
                      Text(
                            widget.recetas!.pasos.toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
