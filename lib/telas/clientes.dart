import 'package:flutter/material.dart';

void main() {
  runApp(ClientListScreen());
}

class ClientListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Clientes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: ClientListPage(),
    );
  }
}

class ClientListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClientCard(
              name: 'Mateus Bitencourt',
              age: 29,
              location: 'Tubarão SC',
              email: 'mateusbc12345@gmail.com',
            ),
            SizedBox(height: 16.0),
            ClientCard(
              name: 'Paulo Santos',
              age: 45,
              location: 'Itapiruba SC',
              email: 'Pauloro@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ClientCard extends StatelessWidget {
  final String name;
  final int age;
  final String location;
  final String email;

  ClientCard({
    required this.name,
    required this.age,
    required this.location,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$age anos'),
            Text(location),
            Text(email),
          ],
        ),
      ),
    );
  }
}
