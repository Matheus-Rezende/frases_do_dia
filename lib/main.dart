import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
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
  var _frases = [
    "Não importa o que você decidiu. O que importa é que isso te faça feliz.",
    "Não tenha medo de errar.",
    "Se a vida não ficar mais fácil, trate de ficar mais forte.",
    "Se a caminhada está difícil, é porque você está no caminho certo.",
    "Toda conquista começa com a decisão de tentar.",
    "Insista, persista e nunca desista.",
    "Vai. E se der medo, vai com medo mesmo.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "Você é mais forte do que imagina. Acredite.",
    "Todo esforço tem a sua recompensa.",
    "Se não puder fazer tudo, faça tudo que puder.",
    "Por maior que seja, não há obstáculo que não possa ser superado.",
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "Grandes batalhas só são dadas a grandes guerreiros.",
    "Aquele que não luta para ter o futuro que quer deve aceitar o futuro que vier.",
    "Sem sacrifício, não há vitória.",
    "Seja seu foco. Faça as coisas por você, não pelos outros.",
    "Lutar sempre, vencer às vezes, desistir nunca!",
    "Arrisque, tente, permita-se, mostre para si mesmo do que é capaz.",
    "A determinação de hoje é o sucesso de amanhã.",
    "Pare de esperar as coisas acontecerem. Vá lá e faça com que aconteçam.",
    "Persista! Se tudo fosse fácil, qualquer um conseguiria.",
    "E que a vontade de realizar meus sonhos, seja maior que o medo.",
    "Erros são provas de que você está tentando. Não desista.",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "Se você realmente quer que aconteça, vá atrás e não desista.",
    "Acredite em você!",
    "Sonhar, nunca desistir!",
    "As melhores coisas acontecem para quem levanta e faz!",
    "Onde há vontade, há chance de dar certo.",
    "Tudo o que temos é o hoje. Viva-o!",
    "Comece onde você está. Use o que você tem. Faça o que você pode."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

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
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color:Colors.black
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
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
