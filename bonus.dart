import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int idx = 0; //index yang aktif

  // isi body akan sesuai index
  List<Center> halaman = [
    Center(child: Text("satu")),
    Center(child: Text("dua")),
    Center(child: Activity()),
    Center(child: Text("empat")),
  ];

  //event saat button di-tap
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello App',
        home: Scaffold(
            appBar: AppBar(
                leading: FlutterLogo(),
                backgroundColor: Colors.blueGrey,
                title: Text('Quiz Flutter'),
                actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
            body: halaman[idx],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: idx,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
                onTap: onItemTap, //event saat button di tap
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: 'Today'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.school), label: " Discover"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.alarm), label: 'Activity'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.verified_user_outlined), label: 'Me'),
                ])));
  }
}

class Activity extends StatelessWidget {
  Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Column(children: [
          Stack(
            children: [
              Container(
                // child: Text("Activity"),// Foreground widget here
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text("Activity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Icon(
            Icons.alarm,
            color: Colors.grey,
            size: 40.0,
          ),
          Text("No New Activation",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Column(
            children: [
              Container(
                child: Center(
                  child: Text(
                    "You're caught up! Check back for notifications,",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "campus alerts, and more",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(padding: EdgeInsets.all(5), children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(13),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(14),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(14),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(14),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(14),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.all(14),
                child: (Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(
                          Icons.dangerous_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "CAMPUS ALERT",
                          style: TextStyle(color: Colors.red),
                        ),
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        // Text("terompet"),
                        Flexible(
                          child: Text("Power Restored to stanford campus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        )
                      ])),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Text("49 days ago",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ])),
                ])),
              ),
            ]),
          )
        ]));
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok'),
            content: const Text(
                'Raisyad Jullfikar (raisyadjullfikar@upi.edu) ; Fachri Najm Noer Kartiman (fachrinajmnoer@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
