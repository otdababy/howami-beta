import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:howami/result_page.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';

//class ClothingBody extends StatefulWidget {
//   Product product;
//   ClothingBody({Key? key, required this.product}) : super(key: key);
//
//   @override
//   _ClothingBodyState createState() => _ClothingBodyState(product);
// }
//
// class _ClothingBodyState extends State<ClothingBody> {
//   Product product;
//   _ClothingBodyState(this.product);
//   void handleProduct(int id) async {
//     //GET request
//     try{
//       var a = await ProductGetApi.getProduct(id);
//       final body = json.decode(a.body.toString());
//       //result from GET
//       final result = body['result'];
//       print(result);
//       //Get 성공
//       if(body['isSuccess']){
//         if(result['avg_score'] == null){
//           result['avg_score'] = 0;
//         }
//         if(result['reviewCount'] == null){
//           result['reviewCount'] = 0;
//         }
//
//         //서버에서 product info 따와서 설정 후 화면 로드
//         final item = Product(id: result['id'], images: result['images'], productName: result['productName'],
//             defaultPrice: result['defaultPrice'], brandName: result['brandName'], availableInstance: result['availableInstance'],
//             relatedProducts: result['relatedProducts'], optionPrice: result['optionPrice'],
//             reviews: result['reviews'], optionName: result['optionName'],information: result['information'], avg_score: result['avg_score'].toDouble(), reviewCount: result['reviewCount'] );
//
//         Navigator.pop(context);
//         context.beamToNamed('/clothing_page', data: {'product' : item});
//       }
//     }
//     catch(e) {
//       print('실패함');
//       print(e.toString());
//     }
//   }



class QuestionPage extends StatefulWidget {
  // int id;
  List<String> questions;
  QuestionPage({Key? key, required this.questions}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState(questions);
}

class _QuestionPageState extends State<QuestionPage> {
  // List<int> _answersChecked = [];
  // int id;
  List<String> questions;
  _QuestionPageState(this.questions);

  final _answersChecked = List<int>.filled(20, 0, growable: false);

  // void
  // void handleProduct(int id) async {
//     //GET request
//     try{
//       var a = await ProductGetApi.getProduct(id);
//       final body = json.decode(a.body.toString());
//       //result from GET
//       final result = body['result'];
//       print(result);
//       //Get 성공
//       if(body['isSuccess']){
//         if(result['avg_score'] == null){
//           result['avg_score'] = 0;
//         }
//         if(result['reviewCount'] == null){
//           result['reviewCount'] = 0;
//         }
//
//         //서버에서 product info 따와서 설정 후 화면 로드
//         final item = Product(id: result['id'], images: result['images'], productName: result['productName'],
//             defaultPrice: result['defaultPrice'], brandName: result['brandName'], availableInstance: result['availableInstance'],
//             relatedProducts: result['relatedProducts'], optionPrice: result['optionPrice'],
//             reviews: result['reviews'], optionName: result['optionName'],information: result['information'], avg_score: result['avg_score'].toDouble(), reviewCount: result['reviewCount'] );
//
//         Navigator.pop(context);
//         context.beamToNamed('/clothing_page', data: {'product' : item});
//       }
//     }
//     catch(e) {
//       print('실패함');
//       print(e.toString());
//     }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'SnowCrab',
                    ),
                    child: Text('ENFP 정확도 테스트',textAlign: TextAlign.left,),
                  ),
                ),
              ],
            ),//ENFP 정확도 테스트
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[0], (val) => setState(()=> _answersChecked[0] = val)),
            // To check if states are passed up from grandchild
            // DefaultTextStyle(
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontFamily: 'SnowCrab',
            //       fontSize: 18,
            //     ),
            //     child: Text(_answersChecked[0].toString(),textAlign: TextAlign.center,)
            // ),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[1], (val) => setState(()=> _answersChecked[1] = val)),
            Padding(padding: EdgeInsets.all(60)),
            StartButton(title: '제출', press: (){
              Navigator.push(context,
                  MaterialPageRoute(
                  builder: (_) => ResultPage(
                  addedResult: _answersChecked.reduce((a, b) => a + b),
              ),),
            );}),
            Padding(padding: EdgeInsets.all(30)),

          ],
        ),
      ),
    );

  }
}