import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  void tocarSom(int numeroDoSom) {
    final player = AudioPlayer();
    player.play(
      AssetSource('nota$numeroDoSom.wav'),
    );
  }

  Expanded criarBotao({Color? cor, int? numeroDaNota}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroDaNota!);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: Text(
          'Nota-$numeroDaNota',
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.purple, numeroDaNota: 1),
              criarBotao(cor: Colors.blue, numeroDaNota: 2),
              criarBotao(cor: Colors.yellow, numeroDaNota: 3),
              criarBotao(cor: Colors.brown, numeroDaNota: 4),
              criarBotao(cor: Colors.pink.shade200, numeroDaNota: 5),
              criarBotao(cor: Colors.teal, numeroDaNota: 6),
              criarBotao(cor: Colors.red, numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
