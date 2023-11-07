import 'package:doa_harian/app/data/remote/models/doa_models.dart';
import 'package:doa_harian/app/data/remote/provider/doa_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getBacaanList();
  }

  Future<List<Doa>?> getBacaanList() async {
    List<Doa>? listDoa = await DoaProvider().getDoa();
    return listDoa;
  }
}
