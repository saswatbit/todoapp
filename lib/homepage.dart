import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String name = "Saswat";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(33, 21, 71, 10),
        body: Column(
          children: [
            SafeArea(
              top: false,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/mountain1.jpg"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(45),
                            bottomLeft: Radius.circular(45)),
                      ),
                      child: Center(
                        child: Text(
                          "Hey $name",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
