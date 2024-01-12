import 'dart:convert';
import 'dart:developer';

class DioResult<T> {
  int statusCode;
  String status;
  String message;
  T data;

  DioResult({this.statusCode, this.data, this.status});
  DioResult.fromJson(dynamic response, T recordList,{bool isChanged=false}) {
    try {
   if(isChanged==true){
    log('isChanged');
   final jsonMap = jsonDecode(response.body);
   status = jsonMap['status'].toString();
      message = jsonMap['message'];
      statusCode = response.statusCode;
      data = recordList;
   }else{   status = response.data['status'].toString();
      message = response.data['message'];
      statusCode = response.statusCode;
      data = recordList;}
    } catch (e) {
      print("Exception - dioResult.dart - DioResult.fromJson():" + e.toString());
    }
  }
}
