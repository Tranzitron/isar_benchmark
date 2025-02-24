import 'package:isar_benchmark/models/model.dart';
import 'package:realm/realm.dart';

part 'realm_model_c.realm.dart';

@RealmModel()
class _RealmModelC {
  @PrimaryKey()
  late int id;

  late String title;

  late List<String> words;

  late int wordCount;

  late double averageWordLength;

  late bool archived;
}

RealmModelC modelToRealm(Model model) {
  return RealmModelC(
    model.id,
    model.title,
    model.wordCount,
    model.averageWordLength,
    model.archived,
    words: model.words,
  );
}

Model realmToModel(RealmModelC model) {
  return Model(
    id: model.id,
    title: model.title,
    words: model.words,
    wordCount: model.wordCount,
    averageWordLength: model.averageWordLength,
    archived: model.archived,
  );
}
