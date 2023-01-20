import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(title: 'Flutter Demo Home Page'),
    );
  }
}
enum Char { lafayette, jefferson }

class Home extends StatefulWidget {
  Home({super.key, required String title});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownvalue = '2017-2018';
  String? semester;

  var items = [
    '2017-2018',
    '2018-2019',
    '2019-2020',
    '2020-2021',
    '2021-2022',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("INFOZYN")),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      child: const Text(
                        'Technical',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: const Text(
                        'Non Technical',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),

                        child:DropdownButton<String>(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30);
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child:RadioListTile(
                          title: Text("ODD",
                            style: TextStyle(fontSize: 10),),
                          value: "ODD",
                          groupValue: semester,
                          onChanged: (value){
                            setState(() {
                              semester = value.toString();
                            });
                          },
                        ),


                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(10,10),
                        child:RadioListTile(
                          title: Text("EVEN",
                            style: TextStyle(fontSize: 10),),
                          value: "EVEN",
                          groupValue: semester,
                          onChanged: (value){
                            setState(() {
                              semester = value.toString();
                            });
                          },
                        ),


                      ),
                    ),

                  ]
              ),
              Row(

                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  Expanded(
                    child: Text('JOSHIGA S', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('14/09/2022', textAlign: TextAlign.center),
                  ),
                ],
              ),
              Column(
                  children:[
                    Container(
                      height: 300,
                      child: Carousel(
                        boxFit: BoxFit.fill,
                        images: [
                          AssetImage('assets/images/5.png'),
                          AssetImage('assets/images/new.png'),
                          AssetImage('assets/images/3.png'),
                          AssetImage('assets/images/4.png'),
                          AssetImage('assets/images/5.png'),
                        ],
                        autoplay: false,
                        dotSize: 5.0,
                        dotSpacing: 20.0,
                      ),
                    ),
                  ]),
              Row(

                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Expanded(
                    child: Text('EYES SHOUT WHAT LIPS FEAR TO SAY', textAlign: TextAlign.center),
                  ),

                ],
              ),

            ],

          ),
        )
    );
  }
}