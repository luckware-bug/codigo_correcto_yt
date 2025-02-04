import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer Widget'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(child: Text('J')),
                    SizedBox(width: 10),
                    Text(
                      "Jose Salazar",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Image.network(
                    "https://movimientofamiliarcristiano.es/wp-content/uploads/2020/01/famila-1080x675.jpg",
                    fit: BoxFit.cover),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
