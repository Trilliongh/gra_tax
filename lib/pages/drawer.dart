import 'package:flutter/material.dart';
import 'package:gra_tax/pages/act.dart';
import 'package:gra_tax/pages/calculator.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _deviceWidth = MediaQuery.of(context).size.width;
    final _deviceHeight = MediaQuery.of(context).size.height;

    final _style1 = TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        child: Column(
          children: <Widget>[
            Container(
              height: 60.0,
              width: _deviceWidth,
              child: Material(
                color: Colors.yellow[700],
                child: Center(
                  child: Text(
                    'GRA TAX CALCULATOR',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                //color: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 1.5,
                    children: <Widget>[
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                            child: Text('GRA ACT',
                                style: _style1, textAlign: TextAlign.center),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ActPage();
                              }));
                            },
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                            child: Text('CUSTOMER SERVICE',
                                style: _style1, textAlign: TextAlign.center),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return null;
                              }));
                            },
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('VAT CALCULATOR',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('FORMS',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('FILE RETURNS',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('NEAREST GRA OFFICE',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('PAY TAX',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Center(
                          child: MaterialButton(
                              child: Text('CONTACT US',
                                  style: _style1, textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return null;
                                }));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
                          title: Text('ABOUT'), leading: Icon(Icons.person))),

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
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('CALCULATE'),
        icon: Icon(Icons.dialpad),
        backgroundColor: Colors.yellow[700],
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return CalculatorPage();
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
