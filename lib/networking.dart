import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var bitcoinValue = jsonDecode(data)['data']['amount'];
      return bitcoinValue;
    } else {
      print(response.statusCode);
    }
  }
}

//  other API source https://blockchain.info/ticker
