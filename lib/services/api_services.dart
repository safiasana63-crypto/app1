import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static dynamic getData( String url) async{
    try{
       var response = await http.get(Uri.parse(url));
       if(response.statusCode==200){
        var value=jsonDecode(response.body);
        print(value);
        return value;
       }else{
        throw(" code: ${response.statusCode} raison: ${response.reasonPhrase}");
       }
    }catch(e,stackTrace){
      print("$e $stackTrace");
    }
  }
}