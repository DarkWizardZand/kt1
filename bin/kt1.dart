import 'package:dio/dio.dart';
import 'package:kt1/kt1.dart' as kt1;

void main(List<String> arguments) async {
  Dio client = Dio();
  String url = "https://dummyjson.com/products";
  Response res = await client.get(url);
  Map<String, dynamic> data = res.data;
  int count = 0;
  for (var element in data['products']) {
    if(element['brand'] == 'Apple'){
      count++;
    }
  }
  print(count);
}
