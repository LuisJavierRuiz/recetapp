import 'package:flutter/material.dart';
import 'package:recetapp/page/acerca_de.dart';
import 'package:recetapp/models/flutter_flow_icon_buton.dart';
import 'package:recetapp/models/flutter_flow_theme.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcercaDeWidget()),
                  );
        },
        backgroundColor: Color(0xFFFF5C00),
        elevation: 8,
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () async {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcercaDeWidget()),
                  );
          },
          child: Text(
            'RecetApp',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Outfit',
                  color: Color(0xFFFF5C00),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.restaurant_menu,
              color: Color(0xFFFF5C00),
              size: 30,
            ),
            onPressed: () async {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcercaDeWidget()),
                  );
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.location_history_outlined,
                color: Color(0xFFFF5C00),
                size: 30,
              ),
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcercaDeWidget()),
                  );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: Column(),
    );
  }
}