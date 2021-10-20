import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frase do dia"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          //width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.red),
              color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/frases_dia.jpg"),
              const Text(
                "Clique abaixo para gerar uma frase",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color:Colors.black
                ),
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
