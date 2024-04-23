import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MentePlena',
      theme: ThemeData(
        // Este é o tema da sua aplicação.
        //
        // TENTE ISTO: Tente executar sua aplicação com "flutter run". Você vai ver
        // a aplicação possui uma barra de ferramentas roxa. Então, sem sair do aplicativo,
        //tente alterar seedColor no colorScheme abaixo para Colors.green
        // e então invocar "hot reload" (salve suas alterações ou pressione o botão "hot
        // recarregar" em um IDE compatível com Flutter ou pressione "r" se você usou
        //a linha de comando para iniciar o aplicativo).
        //
        // Observe que o contador não foi zerado; a aplicação
        // o estado não é perdido durante a recarga. Para redefinir o estado, use hot
        // em vez disso, reinicie.
        //
        // Isso também funciona para código, não apenas para valores: a maioria das alterações de código podem ser
        // testado apenas com uma recarga a quente.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 10, 85, 176)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Menteplena'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  /// Este widget é a página inicial da sua aplicação. É estatal, o que significa
  // que possui um objeto State (definido abaixo) que contém campos que afetam
  // como parece.

  // Esta classe é a configuração do estado. Ele contém os valores (neste
  // caso o título) fornecido pelo pai (neste caso, o widget do aplicativo) e
  // usado pelo método build do Estado. Os campos em uma subclasse Widget são
  // sempre marcado como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta chamada para setState informa ao framework Flutter que algo aconteceu
      // alterado neste estado, o que faz com que ele execute novamente o método de construção abaixo
      // para que a exibição possa refletir os valores atualizados. Se nós mudássemos
      // _counter sem chamar setState(), então o método build não seria
      // ligado novamente e nada iria acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é executado novamente toda vez que setState é chamado, por exemplo, como feito
    // pelo método _incrementCounter acima.
    //
    // A estrutura Flutter foi otimizada para executar novamente métodos de construção
    // rápido, para que você possa reconstruir qualquer coisa que precise ser atualizada
    // do que ter que alterar individualmente as instâncias dos widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 99, 247),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 251, 251, 251),
        ),
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
