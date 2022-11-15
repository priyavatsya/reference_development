import '../modal/uer_modal.dart';
import '../utils/const.dart';
import 'dio_client.dart';

class UserRepository {
  Future<List<UserModel>> getUser() async {
    try {
      final result = await ApiClient().getData(ApiConst.path);
      final List data = result["data"];
      return data.map((e) => UserModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
