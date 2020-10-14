import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String lastTask;
  final int totalNewMessages;

  const ChatWidget({this.lastTask, this.totalNewMessages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/saytama.png'),
      ),
      title: Text(
        'Gedan Magalhães',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Lorem ipsum is simply dummy text of',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: [
          Text(
            lastTask,
            style: TextStyle(
              color: totalNewMessages > 0
                  ? Theme.of(context).accentColor
                  : Colors.black,
            ),
          ),
          SizedBox(height: 5),
          if (totalNewMessages > 0)
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                totalNewMessages.toString(),
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
        ],
      ),
    );
  }
}
