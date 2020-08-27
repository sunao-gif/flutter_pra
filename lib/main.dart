import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'book_List_page.dart';
import 'main_model.dart';

void async; main() async {
  var ensureInitialized = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // ignore: missing_required_param
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child){
                return Center(
                  child: Column(
                    children: [
                      Text(
                        model.kboyText,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      RaisedButton(
                        child: Text('ボタン'),
                        onPressed: () {
                          //ここで何かする
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BookList()),
                          );
                        },
                      )
                    ],
                  ),
                );
              }
          ),
          ),
        ),
    );
  }
}
