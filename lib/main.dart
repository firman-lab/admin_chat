import 'package:admin_chat/page/chat_page.dart';
import 'package:admin_chat/page/detail_chat_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin Campaign",
      routes: {
        '/': (context) => ChatPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
