import 'package:flutter/material.dart';
import 'package:whatsappUi/pages/chats_page.dart';
import 'package:whatsappUi/themes/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
              onSelected: (int value) {
                print(value);
              },
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    child: Text('Novo grupo'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('Nova transmissão'),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('WhatsApp Web'),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text('Mensagens favoritas'),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text('Configurações'),
                    value: 5,
                  ),
                ];
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(text: 'CONVERSAS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CHAMADAS'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChatsPage(),
            Text('Páginas status'),
            Text('Páginas chamadas'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
