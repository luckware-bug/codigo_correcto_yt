import 'package:flutter/material.dart';

class WidgetsTotal extends StatefulWidget {
  const WidgetsTotal({super.key});

  @override
  _WidgetsTotalState createState() => _WidgetsTotalState();
}

class _WidgetsTotalState extends State<WidgetsTotal> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solo Widget'),
        backgroundColor: Colors.red,
      ),
      body: Container(
          width: double.infinity,
          height: 400,
          color: const Color.fromARGB(255, 179, 220, 253),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Elemento 1"),
              Text("Elemento 2"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.star),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("¡Alerta!"),
                            content: Text("Boton Presionado"),
                            actions: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    child: const Text("Ok"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Duda")),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Cerrar")),
                                ],
                              ),
                            ],
                          );
                        });
                  },
                  child: Text("Presioname")),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Contraseña",
                          border: OutlineInputBorder(),
                          hintText: "Escribe tu contraseña",
                          suffixIcon: IconButton(
                            icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: (){
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Ingresar"))
                ],
              )
            ],
          )),
      backgroundColor: Colors.grey[300],
    );
  }
}
