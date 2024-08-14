class NewsModal {
  List<ArticlesModal> articles;

  NewsModal(this.articles);

  factory NewsModal.fromJson(Map m1) {
    return NewsModal((m1['articles'] as List)
        .map(
          (e) => ArticlesModal.fromJson(e),
        )
        .toList());
  }
}

class ArticlesModal {
  String author, title, description, url, urlToImage,content;
  SourceModal source;

  ArticlesModal(this.author, this.title, this.description, this.url,
      this.source, this.urlToImage,this.content);

  factory ArticlesModal.fromJson(Map m1) {
    return ArticlesModal(
      m1['author'] ?? 'Unknown Author',
      m1['title'] ?? '',
      m1['description'] ?? '',
      m1['url'] ?? '',
      SourceModal.fromJson(
        m1['source'] ?? '',
      ),
      m1['urlToImage'] ?? '',
      m1['content'] ?? '',
    );
  }
}

class SourceModal {
  String name;

  SourceModal(this.name);

  factory SourceModal.fromJson(Map m1) {
    return SourceModal(m1['name'] ?? '');
  }
}
