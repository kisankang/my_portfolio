import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/data/repositories/ibase_repository.dart';

abstract class INotionRepository extends IBaseRepository {
  Future<List<SkillItem>?> getDatabase({required String databaseId});
}
