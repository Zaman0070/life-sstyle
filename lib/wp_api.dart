import 'package:http/http.dart' as http;
import 'dart:convert';

<<<<<<< HEAD
Future<List> fetchWpPosts() async {
  final url = 'Https://nutriana.surnaturel.ma/wp-json/wp/v2/posts';
  final response = await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
=======

Future<List> fetchWpPosts()async {
  final url = 'Https://nutriana.surnaturel.ma/wp-json/wp/v2/posts';
  final response =await http.get(Uri.parse(url),headers: {"Accept":"application/json"});
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

  var jsonResponse = jsonDecode(response.body);
  return jsonResponse;
}

<<<<<<< HEAD
Future fetchWpPostImageUrl(href) async {
  final response = await http.get(Uri.parse(href), headers: {"Accept": "application/json"});
=======
Future fetchWpPostImageUrl(href)async {
  final response =await http.get(Uri.parse(href),headers: {"Accept":"application/json"});
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

  var jsonResponse = jsonDecode(response.body);
  return jsonResponse;
}

/////// cart/////////////////////

<<<<<<< HEAD
Future<List> fetchCart() async {
  final url = 'http://nutriana.surnaturel.ma/wp-json/cocart/v2/cart';
  final response = await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
=======
Future<List> fetchCart()async {
  final url = 'http://nutriana.surnaturel.ma/wp-json/cocart/v2/cart';
  final response =await http.get(Uri.parse(url),headers: {"Accept":"application/json"});
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

  var jsonResponse = jsonDecode(response.body);
  return jsonResponse;
}

<<<<<<< HEAD
Future fetchCartPostImageUrl(href) async {
  final response = await http.get(Uri.parse(href), headers: {"Accept": "application/json"});
=======
Future fetchCartPostImageUrl(href)async {
  final response =await http.get(Uri.parse(href),headers: {"Accept":"application/json"});
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

  var jsonResponse = jsonDecode(response.body);
  return jsonResponse;
}
<<<<<<< HEAD
=======

>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
