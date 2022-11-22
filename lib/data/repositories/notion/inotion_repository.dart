import 'package:my_portfolio/data/models/base_response.dart';
import 'package:my_portfolio/data/repositories/ibase_repository.dart';

abstract class INotionRepository extends IBaseRepository {
  Future<BaseResponse<dynamic>> getDatabase({required String databaseId});
}
