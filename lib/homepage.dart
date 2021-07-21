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
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8, right: 8, top: 25),
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, right: 8, top: 25),
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, right: 8, top: 25),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
