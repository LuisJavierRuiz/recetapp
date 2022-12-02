import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Recetas');

class FirebaseCrud {

  static Future<Response> addReceta({
    required String imagen,
    required String ingredientes,
    required String nombre,
    required String pasos,
    required String tiempo
  }) async {

    Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "imagen": imagen,
      "ingredientes": ingredientes,
      "nombre" : nombre,
      "pasos" : pasos,
      "tiempo" : tiempo
    };

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {
          response.code = 200;
          response.message = "Sucessfully added to the database";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }



  static Future<Response> updateReceta({
    required String imagen,
    required String ingredientes,
    required String nombre,
    required String pasos,
    required String tiempo,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "imagen": imagen,
      "ingredientes": ingredientes,
      "nombre" : nombre,
      "pasos" : pasos,
      "tiempo" : tiempo
    };

    await documentReferencer
        .update(data)
        .whenComplete(() {
           response.code = 200;
          response.message = "Sucessfully updated Receta";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }

  static Stream<QuerySnapshot> readReceta() {
    CollectionReference notesItemCollection =
        _Collection;

    return notesItemCollection.snapshots();
  }

  static Future<Response> deleteReceta({
    required String docId,
  }) async {
     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    await documentReferencer
        .delete()
        .whenComplete((){
          response.code = 200;
          response.message = "Sucessfully Deleted Receta";
        })
        .catchError((e) {
           response.code = 500;
            response.message = e;
        });

   return response;
  }

}