import 'package:flutter/material.dart';


class AcercaDeWidget extends StatefulWidget {
  const AcercaDeWidget({Key? key}) : super(key: key);

  @override
  _AcercaDeWidgetState createState() => _AcercaDeWidgetState();
}

class _AcercaDeWidgetState extends State<AcercaDeWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
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
        title: const Text(
          'Acerca de...',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFFFF5C00),
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: Align(
          alignment: const AlignmentDirectional(0.05, 0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(241, 244, 248, 1),
              image: DecorationImage(
                fit: BoxFit.none,
                image: AssetImage(
                  '../assets/fondo_acercade.jpg'
                ),
              ),
              shape: BoxShape.rectangle,
            ),
            alignment: const AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'RecetApp',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFFF5C00),
                            fontSize: 41,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Fundamentos de desarrollo móvil',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black54,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 32,
                                decoration: BoxDecoration(
                                  color:
                                  Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                          child: Text(
                            'Descripción',
                            style:TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                          child: Text(
                            'Esta aplicación fue creada para que las personas almacenen sus recetas de forma digital, teniendo ya un catálogo con algunas recetas extra.\nEl usuario tiene la opción de agregar nuevas recetas, modificar y eliminar las recetas que tenga.',
                            style:
                            TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: InkWell(
                    onTap: () async {},
                    child: const Text(
                      'Luis Javier Ruíz Salazar\nAlejandra Sánchez Barrera',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}