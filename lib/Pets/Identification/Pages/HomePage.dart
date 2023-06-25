import 'package:flutter/material.dart';
import '../../../Adopt/Identification/Pages/FormAdopted.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3C444C),
        title: Row(
          children: [
            Image.asset(
              'assets/images/Logo.png',
              width: 30,
              height: 30,
            ),
            SizedBox(width: 10),
            Text('GRADA'),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Adoptar'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('Dar en adopcion'),
                  value: 2,
                ),
                // Agrega más opciones de menú si es necesario
              ];
            },
            onSelected: (value) {
              // Aquí puedes manejar la opción seleccionada del menú
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopted()),
                );
              }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Catálogo de adopción',
              style: TextStyle(
                fontFamily: 'ZillaSlab',
                fontSize: 20,
                textBaseline: TextBaseline.alphabetic,
                height: 3,
              ),
            ),
            SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(30),
              children: [
                AdoptionCard(
                  imageUrl:
                  'https://static.fundacion-affinity.org/cdn/farfuture/PVbbIC-0M9y4fPbbCsdvAD8bcjjtbFc0NSP3lRwlWcE/mtime:1643275542/sites/default/files/los-10-sonidos-principales-del-perro.jpg',
                  title: 'Golden Retriever',
                  description:
                  'El Golden Retriever es un perro de tamaño mediano a grande con un hermoso pelaje dorado. Son amables, leales y cariñosos, ideales para familias y personas de todas las edades...',
                ),
                // Agrega más tarjetas aquí si es necesario
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AdoptionCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const AdoptionCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF3C444D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // Personaliza el color y ancho del borde
      ),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 334,
            height: 219,
            alignment: Alignment.center,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 36),
            tileColor: Colors.transparent,
            title: Container(
              width: 270,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'ZillaSlab',
                  color: Colors.white,
                  fontSize: 24,
                  height: 2,
                ),
              ),
            ),
            subtitle: Container(
              width: 270,
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFFCBCFD4),
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(242, 122, 84, 1),
                  Color.fromRGBO(161, 84, 242, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Color transparente para que el gradiente se vea
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 40),
                elevation: 0, // Sin sombra
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                'Botón',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
