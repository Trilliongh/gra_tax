import 'package:flutter/material.dart';


class Drawerr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(

      ),
      drawer: Drawer(
            child: Column(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: Text('GRA TAX CALCULATOR'),
              accountEmail: Text('info.taxcalculator.com'),
              margin: EdgeInsets.all(0.0),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.person,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.yellow[700]),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: SingleChildScrollView(
                              child: Column(
                  children: <Widget>[
                    //body
                    
                    InkWell(
                        onTap: () {},
                        child: ListTile(
                            title: Text('ABOUT'),
                            leading: Icon(Icons.person))),

                    InkWell(
                        onTap: () {},
                        child: ListTile(
                            title: Text('CALCULATE TAX'),
                            leading: Icon(Icons.record_voice_over))),

                    InkWell(
                        onTap: () {},
                        child: ListTile(
                            title: Text('FILE RETURNS'),
                            leading: Icon(Icons.record_voice_over))),

                    InkWell(
                        onTap: () {},
                        child: ListTile(
                            title: Text('PAY TAX'),
                            leading: Icon(Icons.record_voice_over))),



                    InkWell(
                        onTap: () {},
                        child: ListTile(
                            title: Text('SETTINGS'),
                            leading: Icon(Icons.settings))),

                   
                  ],
                ),
              ),
            ),
          ],
        )));
    
  }
}