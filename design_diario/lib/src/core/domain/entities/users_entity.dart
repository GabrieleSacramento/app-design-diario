import 'article_informations_entity.dart';

class UsersEntity {
  String userName;
  String userPhoto;
  ArticleInformationsEntity articleInformationsEntity;

  UsersEntity({
    required this.userName,
    required this.userPhoto,
    required this.articleInformationsEntity,
  });
}
