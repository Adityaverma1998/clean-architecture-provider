import 'package:clean_architecture_provider/domain/entity/post.dart';

class PostModal{
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModal({required this.userId,required this.id,required this.title,required this.body});

  factory PostModal.fromJson(Map<String,dynamic> json){
    return PostModal(
      userId: json['userId'],
      id:json['id'],
      title: json['title'],
      body:json['body']
    );
  }
  Post toEntity() {
    return Post(id: id, title: title, body: body, userId: userId);
  }
  Map<String,dynamic> toJson(){
    return{
      'userId':userId,
      'id':id,
      'title':title,
      'body':body
    };
  }
  
}