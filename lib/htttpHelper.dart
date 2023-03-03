import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class NetworkUtils {
  Future<List<Map>> ProductGridViewListRequest() async {
    List<Map> items = [];
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      String jsonString = response.body;

      List data = jsonDecode(jsonString);

      items = data.cast<Map>();
    }
// /get data from API
    return items;
  }

  // Future<List> ProductGridViewListRequest() async {
  //   var URL = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //   var PostHeader = {"Content-Type": "application/json"};
  //   var response = await http.get(
  //     URL,
  //   );

  //   var ResultCode = response.statusCode;
  //   var ResultBody = json.decode(response.body);

  //   if (ResultCode == 200 && ResultBody['status'] == "success") {
  //     print(response.body);
  //     log("Request Success");
  //     return ResultBody['data'];
  //   } else {
  //     log("Request fail ! try again");
  //     return [];
  //   }
  // }
}
