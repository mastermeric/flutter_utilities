class Haber {
  String? userId;
  String? id;
  String? title;
  String? completed;

  //https://jsonplaceholder.typicode.com/todos/   icerigi..
  Haber({this.userId, this.title, this.id, this.completed});

  Haber.fromJson(Map<String, dynamic> json)
      : userId = json['userId'].toString(),
        title = json['title'].toString(),
        id = json['id'].toString(),
        completed = json['completed'].toString();

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'title': title,
        'id': id,
        'completed': completed,
      };
}
