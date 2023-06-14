import 'package:flutter/material.dart';

void main() {
  runApp(AvailableRoomsScreen());
}

class AvailableRoomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quartos Disponíveis',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: AvailableRoomsPage(),
    );
  }
}

class AvailableRoomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quartos Disponíveis'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoomCard(
              roomType: 'Quarto Básico',
              quantity: 5,
              price: 59.90,
            ),
            SizedBox(height: 16.0),
            RoomCard(
              roomType: 'Quarto Duplo',
              quantity: 7,
              price: 99.90,
            ),
            SizedBox(height: 16.0),
            RoomCard(
              roomType: 'Quarto Triplo',
              quantity: 3,
              price: 129.90,
            ),
          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  final String roomType;
  final int quantity;
  final double price;

  RoomCard({
    required this.roomType,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(roomType),
        subtitle: Text('Quantidade disponível: $quantity'),
        trailing: Text('R\$ ${price.toStringAsFixed(2)} / diária'),
      ),
    );
  }
}
