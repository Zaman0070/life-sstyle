//
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class ProductService{
//   Future<void> getUserName(
//
//       ) async {
//     await FirebaseFirestore.instance
//         .collection('Product')
//         .doc((FirebaseAuth.instance.currentUser!).uid)
//         .get()
//         .then((value) {
//       var email = user!.email;
//       var name = user!.displayName;
//       var url = user!.photoURL;
//       var uid = user!.uid;
//     });
//   }
// }