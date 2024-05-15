import "package:cloud_firestore/cloud_firestore.dart";

create() async{

  await FirebaseFirestore.instance.collection('Users').doc('bom').set({'name':'jack'});

  print('data created');

}

update(String collname,docname,field,var newfield) async{

  await FirebaseFirestore.instance.collection(collname).doc(docname).update({field:newfield});

  print('data updated');

}

delete(String collname,docname) async {

  await FirebaseFirestore.instance.collection(collname).doc(docname).delete();

  print('document deleted');
}
