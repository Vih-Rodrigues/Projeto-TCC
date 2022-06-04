import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          DrawerHeader(
            child: Text(
              'Usuário',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(107, 126, 125, 1),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),

          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Calendário'),
            onTap: () => {Navigator.pushNamed(context, 'tela06')},
          ),

          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Canções'),
            onTap: () => {Navigator.pushNamed(context, 'tela05')}
          ),

          ListTile(
            leading: Icon(Icons.church),
            title: Text('Orações'),
            onTap: () => {Navigator.pushNamed(context, 'tela02')},
          ),

          ListTile(
            leading: Icon(Icons.book),
            title: Text('Bíblia'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () => {Navigator.pushNamed(context, 'tela04')},
          ),
          
        ],
      ),
    );
  }
}