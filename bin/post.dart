class Post {
  String createPost(PostDataBase db, String post) {
    return db.addPost(post);
  }
}

class TagPost extends Post {
  @override
  String createPost(PostDataBase db, String post) {
    return db.addTagPost(post);
  }
}

class MentionPost extends Post {
  @override
  String createPost(PostDataBase db, String post) {
    return db.addMentionPost(post);
  }
}

class PostDataBase {
  String addPost(String post) {
    return 'Original post: $post';
  }

  String addTagPost(String tagPost) {
    return 'Tag post: $tagPost';
  }

  String addMentionPost(String mentionPost) {
    return 'Metion post: $mentionPost';
  }
}
