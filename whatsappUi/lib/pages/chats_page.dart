import 'package:flutter/material.dart';
import 'package:whatsappUi/widgets/chat_widget.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => Divider(
        height: 5,
        color: Colors.grey,
      ),
      itemCount: 20,
      itemBuilder: (_, index) {
        return ChatWidget(
          lastTask: index % 5 == 0 ? 'Ontem' : '21:58',
          totalNewMessages: index % 5 == 0 ? index : 0,
        );
      },
    );
  }
}
