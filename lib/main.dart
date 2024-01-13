//Aqui esta importando el archivo material.dart que esta en la carpeta flutter
import 'package:flutter/material.dart';

//Es una metodo principal que regresa el valor nudo con void
void main() {

  runApp(const MyApp());//entenderia que es la forma en la que la aplicacion hara que funcione con la clase runapp
}

//Creacion de clase Myapp
class MyApp extends StatelessWidget {
  //variable de objeto llave
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  //Creacion de un metodo build
  Widget build(BuildContext context) {
    return MaterialApp(
      //Este Aqui esta creando una variable que se llamara tittle que se declara como string ya que el titulo se llamara flutter demo
      title: 'Flutter Demo',
      //se crea una variable que es el theme que da el color
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), //colores de tema de la aplicacion
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//Crea una clase MyHomePage
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title; //aqui hace referencia a una variable llamada tittle de tipo string

  @override
  //aqui
  State<MyHomePage> createState() => _MyHomePageState(); //menciona que la variable createstate tiene que ser igual o mayor que _Myhonepagestate
}

//creacion de una clase llamada _MyHomePageState
class _MyHomePageState extends State<MyHomePage> {
  //Variable _ocunter que declara un valor entero que es igual a un 0
  int _counter = 0; //aqui es una variable _counter entero ya que contara los clicks que des

//Aqui esta creando una funcion que esta regresando un valor nulo con el void
  void _incrementCounter() {

    //clase setstate
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //crea una variable
      _counter++; //aqui reutilizan la variable creada anteriormente pero aqui hace la funcion del conteo por cada click
    });
  }

  @override
  //crea una metodo que conllevara el cuerpo de la aplicacion
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        //crea una variable que ayudara a agregar color al fondo con los colores ya definidos
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, //esta dando nel color de fondo con la variable backgroundcolor
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title), //aqui menciona el widget tittle que tambien se vuelve a utilizar como variable
      ),
      //variable body que genera el cuerpo
      body: Center( //Aqui esta dando forma al cuerpo con un center que centrara la posision de los widgets
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column( //aqui se menciona que es la variable child se utiliza como un layout como widget
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
          //aqui crea una variable que definira como aparecera al usuario cuantas veces a clickeado
          children: <Widget>[
            const Text( //variable text que se referira al numero de click hecho durante la aplicacion
              'You have pushed the button this many times:', //el texto que ira antes de mostrar el numero de veces que presionaste el boton
            ),
            Text(
              '$_counter', //utiliza la variable para mostrar el valor
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      //aqui se mencion a un nueva funcion que es un boton
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, //aqui creo variables que mostrara las funciones que hara a continuaicon tipo de variable entero
        tooltip: 'Increment', //aqui crea una variable que es un tooltip tipo de variable string
        child: const Icon(Icons.add), //aqui reutiliza la variable child como herencia para agregar un icono
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
