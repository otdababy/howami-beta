// import 'dart:convert';
//
// class GetQuestions {
//   final int id;
//
//   const GetQuestions({
//     required this.id
//   });
// }
//
// class GetQuestionsApi {
//   switch(id){
//
//   }
//
//   static Future<http.Response> getProduct(int id) async {
//     final url = Uri.parse('https://otdabeta.shop/app/product/${id}');
//     var a = await http.get(
//       url,
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//     );
//     return a;
//   }
// }