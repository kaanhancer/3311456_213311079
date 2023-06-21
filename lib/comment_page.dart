import 'package:flutter/material.dart';
import 'database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase.instance.initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App ',
      home: CommentPage(),
    );
  }
}

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  List<String> comments = [];

  TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadComments();
  }

  Future<void> loadComments() async {
    List<String> storedComments = await LocalDatabase.instance.getComments();
    setState(() {
      comments = storedComments;
    });
  }

  void addComment(String comment) async {
    await LocalDatabase.instance.addComment(comment);
    setState(() {
      comments.add(comment);
    });
  }

  void deleteComment(int index) async {
    await LocalDatabase.instance.deleteComment(index);
    setState(() {
      comments.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5,
        title: Text('Yorumlar'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/apple12.jpg'), // Arka plan resminin yolunu buraya ekleyin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[100],
                    child: ListTile(
                      title: Text(comments[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteComment(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _commentController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        fillColor: Colors.grey.shade900.withOpacity(0.5),
                        filled: true,
                        hintText: 'Yorumunuzu Yazın',
                        focusColor: Colors.grey,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    height: 62,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        String comment = _commentController.text;
                        if (comment.isNotEmpty) {
                          addComment(comment);
                          _commentController.clear();
                        }
                      },
                      child: Text('Yorum Yap'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
