import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi / 20),
              child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi / 15,
                    color: Colors.white,
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 30),
              child: SizedBox(
                width: ekranGenisligi / 1.2,
                height: ekranYuksekligi / 12,

                child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink)),
                    onPressed: (){
                      print("butona basıldı");
                    },
                    child: Text("Giriş Yap",
                      style: TextStyle(color: Colors.white),
                ),

              ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Yazıya basıldı");
              },
              child: Text("Yardım",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi / 30
              )
              ),
            )
          ],
        )
      )
    );
  }
}
