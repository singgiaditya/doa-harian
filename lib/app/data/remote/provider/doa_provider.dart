import 'package:doa_harian/app/data/remote/models/doa_models.dart';
import 'package:get/get.dart';

class DoaProvider extends GetConnect {
  Future<List<Doa>?> getDoa() async {
    final response = await get('https://doa-doa-api-ahmadramadhan.fly.dev/api');
    List responseData = response.body;
    List<Doa> listDoa = [];
    for (var element in responseData) {
      listDoa.add(Doa.fromJson(element));
    }
    return listDoa;
  }
}
