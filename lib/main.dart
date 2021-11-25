import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prova Login',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(autofocus: true, keyboardType: TextInputType.number, style: TextStyle(color: Colors.blue, fontSize: 20), decoration: InputDecoration(prefixIcon: Icon(Icons.supervised_user_circle), labelText: "Usuário", labelStyle: TextStyle(color: Colors.black), fillColor: Colors.white, filled: true)),
                Divider(),
                TextField(autofocus: true, obscureText: true, keyboardType: TextInputType.text, style: TextStyle(color: Colors.blue, fontSize: 20), decoration: InputDecoration(prefixIcon: Icon(Icons.password), labelText: "Senha do usuário", labelStyle: TextStyle(color: Colors.black), fillColor: Colors.white, filled: true)),
                Divider(),
                FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0), side: BorderSide(color: Colors.white)),
                  color: Colors.grey,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(30.0),
                  onPressed: () => {
                    print('Chamar login aqui')
                  },
                  child: Text(
                    "ENTRAR".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
