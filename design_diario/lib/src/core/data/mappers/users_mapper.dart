import 'package:design_diario/src/core/domain/entities/article_informations_entity.dart';
import 'package:design_diario/src/core/domain/entities/users_entity.dart';

abstract class UsersMapper {
  static List<UsersEntity> usersFromJson(
    Map<String, dynamic> json,
  ) {
    List<UsersEntity> users = <UsersEntity>[];
    json['users'].forEach((v) {
      users.add(usersEntityFromJson(v));
    });
    return users;
  }

  static UsersEntity usersEntityFromJson(Map<String, dynamic> json) {
    return UsersEntity(
      userName: json['userName'] ?? '',
      userPhoto: json['userPhoto'] ?? '',
      articleInformationsEntity: articleInformationsEntityFromJson(
          json['articleInformationsEntity'] ?? ''),
    );
  }

  static ArticleInformationsEntity articleInformationsEntityFromJson(
      Map<String, dynamic> json) {
    return ArticleInformationsEntity(
        articleTitle: json['articleTitle'],
        articleBodyText: json['articleBodyText'],
        articleImage: json['articleImage']);
  }
}
