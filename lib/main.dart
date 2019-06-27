import 'package:flutter/material.dart';
import 'package:gra_tax/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GRA TAX CALCULATOR',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'GRA TAX CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: Text(
        (widget.title),
      ),
      centerTitle: true,),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png'),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
          child: Text(
            'The V-Pay app seeks to educate you on the fastest and convenient mode of calculating and paying your tax from wherever you may be located. In this module, you will be introduced to a set of simple features to guide you to pay your tax.We offer a professional tax package for tax payers across Ghana and beyond with all the forms and features to prepare and electronically file tax returns for clients. V-Pay makes filing of your tax return easy with step-by-step guide and free phone support. Get in touch with our team and experince the world of more',
            textAlign: TextAlign.justify, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Container(
          height: 60.0,
          width: _deviceWidth,
          child: Material(
            color: Colors.yellow[700],
            child: MaterialButton(
              child: Text(
                'PROCEED',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return LoginPage();
                },),);
              },
            ),
            
          ),
          
        ),
        Container(
          height: 10.0,
          width: _deviceWidth,
          child: Material(
            color: Colors.lightBlue,
            
            
          ),
          
        ),

      ]),
    );
  }
}
