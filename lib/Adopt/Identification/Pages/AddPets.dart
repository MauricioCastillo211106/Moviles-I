import 'package:flutter/material.dart';
import '../../../Pets/Identification/Pages/HomePage.dart';
import 'FormAdopted.dart';

class AddPets extends StatefulWidget {
  const AddPets({Key? key}) : super(key: key);

  @override
  _AddPetsState createState() => _AddPetsState();
}

class _AddPetsState extends State<AddPets> {
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
              ];
            },
            onSelected: (value) {
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
          ),
        ],
      ),
      body:  SingleChildScrollView(
    child: Center(

    child: Container(
          width: 304.0,
          height: 650.0,
          child: Card(
            color: Color(0xFF3C444C),
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        'NOMBRE',
                        style: TextStyle(
                          color: Color(0xFFCBCFD4),
                          fontSize: 10.0,
                          fontFamily: 'Montserrat',
                          height: 18.0 / 10.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 275.0,
                    height: 40.0,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Correo electrónico',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    children: [
                      Text(
                        'RAZA',
                        style: TextStyle(
                          color: Color(0xFFCBCFD4),
                          fontSize: 10.0,
                          fontFamily: 'Montserrat',
                          height: 18.0 / 10.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 275.0,
                    height: 40.0,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  SizedBox(
                    width: 279.0,
                    height: 40.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print('Subir imagen');
                      },
                      icon: Icon(Icons.upload),
                      label: Text('SUBIR IMAGANES'),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.1)),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.white, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    children: [
                      Text(
                        'HORARIO',
                        style: TextStyle(
                          color: Color(0xFFCBCFD4),
                          fontSize: 10.0,
                          fontFamily: 'Montserrat',
                          height: 18.0 / 10.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 275.0,
                    height: 40.0,
                    child: TextField(
                      controller: TextEditingController(),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Campo adicional 1',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    children: [
                      Text(
                        'UBICACION',
                        style: TextStyle(
                          color: Color(0xFFCBCFD4),
                          fontSize: 10.0,
                          fontFamily: 'Montserrat',
                          height: 18.0 / 10.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 275.0,
                    height: 40.0,
                    child: TextField(
                      controller: TextEditingController(),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Campo adicional 2',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    width: 275.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(242, 122, 84, 1),
                          Color.fromRGBO(161, 84, 242, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Guardar cambios');
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.all(0.0),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(242, 122, 84, 1),
                              Color.fromRGBO(161, 84, 242, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 275.0, minHeight: 40.0),
                          alignment: Alignment.center,
                          child: Text(
                            'GUARDAR CAMBIOS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ),
        ),
      ),
    );
  }
}
