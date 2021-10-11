import 'package:admin_chat/theme.dart';
import 'package:admin_chat/widget/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Customer Message',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          ChatTile(),
          ChatTile(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
