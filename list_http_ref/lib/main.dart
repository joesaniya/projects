import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title}) : super();

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List data;

  // Function to get the JSON data
  Future<String> getJSONData() async {
  print("fetch");
    var response = await http.get(
        // Encode the url
        Uri.encodeFull("https://unsplash.com/napi/photos/Q14J2k8VE3U/related"),
        // Only accept JSON response
        headers: {"Accept": "application/json"}
    );

    setState(() {
      // Get the JSON data
      data = json.decode(response.body)['results'];
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (context, index) {
        return _buildImageColumn(data[index]);
        // return _buildRow(data[index]);
      }
    );
  }

  Widget _buildImageColumn(dynamic item) => Container(
      decoration: BoxDecoration(
        color: Colors.white54
      ),
      margin: const EdgeInsets.all(4),
      child: Column(
        children: [
          new CachedNetworkImage(
            imageUrl: item['urls']['small'],
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
            fadeOutDuration: new Duration(seconds: 1),
            fadeInDuration: new Duration(seconds: 3),
          ),
          _buildRow(item)
        ],
      ),
    );

  Widget _buildRow(dynamic item) {
    return ListTile(
      title: Text(
        item['description'] == null ? '': item['description'],
      ),
      subtitle: Text("Likes: " + item['likes'].toString()),
    );
  }
  @override
  void initState() {
    super.initState();
    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}



// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class NewsListPage extends StatefulWidget {
  
//   @override
//   _NewsListPageState createState() => _NewsListPageState();
// }

// class _NewsListPageState extends State<NewsListPage> {
  
//  Future<List<Article>> getData(String newsType) async {
//   List<Article> list;
//     String link =
//           "https://newsapi.org/v2/top-headlines?country=in&apiKey=API_KEY";
//     var res = await http
//         .get(Uri.encodeFull(link), headers: {"Accept": "application/json"});
//     print(res.body);
//       if (res.statusCode == 200) {
//         var data = json.decode(res.body);
//         var rest = data["articles"] as List;
//         print(rest);
//         list = rest.map<Article>((json) => Article.fromJson(json)).toList();
//       }
//     print("List Size: ${ist.length}");
//     return list;
//   }
  
//   Widget listViewWidget(List<Article> article) {
//     return Container(
//       child: ListView.builder(
//           itemCount: 20,
//           padding: const EdgeInsets.all(2.0),
//           itemBuilder: (context, position) {
//             return Card(
//               child: ListTile(
//                 title: Text(
//                   '${article[position].title}',
//                   style: TextStyle(
//                       fontSize: 18.0,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 leading: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(
//                     child: article[position].urlToImage == null
//                         ? Image(
//                             image: AssetImage('images/no_image_available.png'),
//                           )
//                         : Image.network('${article[position].urlToImage}'),
//                     height: 100.0,
//                     width: 100.0,
//                   ),
//                 ),
//                 onTap: () => _onTapItem(context, article[position]),
//               ),
//             );
//           }),
//     );
//   }

//   void _onTapItem(BuildContext context, Article article) {
//     Navigator.of(context).push(MaterialPageRoute(
//         builder: (BuildContext context) => NewsDetails(article, widget.title)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: FutureBuilder(
//           future: getData(widget.newsType),
//           builder: (context, snapshot) {
//             return snapshot.data != null
//                 ? listViewWidget(snapshot.data)
//                 : Center(child: CircularProgressIndicator());
//           }),
//     );
//   }
// }


// class Article {
//   Source source;
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   String publishedAt;
//   String content;

//   Article(
//       {required this.source,
//       required this.author,
//       required this.title,
//       required this.description,
//       required this.url,
//       required this.urlToImage,
//       required this.publishedAt,
//       required this.content});

//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//         source: Source.fromJson(json["source"]),
//         author: json["author"],
//         title: json["title"],
//         description: json["description"],
//         url: json["url"],
//         urlToImage: json["urlToImage"],
//         publishedAt: json["publishedAt"],
//         content: json["content"]);
//   }
// }

// class Source {
//   String id;
//   String name;

//   Source({required this.id, required this.name});

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       id: json["id"] as String,
//       name: json["name"] as String,
//     );
//   }
// }