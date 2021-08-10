import 'post.dart';

void main(List<String> arguments) {
  final posts = ['original post', '#tag post', '@mention post'];
  final db = PostDataBase();
  Post? postObject;
  for (var post in posts) {
    if (post.startsWith('#')) {
      postObject = TagPost();
    } else if (post.startsWith('@')) {
      postObject = MentionPost();
    } else {
      postObject = Post();
    }
    final result = postObject.createPost(db, post);
    print(result);
  }
}
