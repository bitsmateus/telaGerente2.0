import 'package:flutter/material.dart';

void main() {
  runApp(ReservationScreen());
}

class ReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: ReservationPage(),
    );
  }
}

class ReservationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ReservationCard(
            name: 'Mateus',
            roomType: 'Quarto Básico',
            price: 59.90,
            paid: true,
          ),
          SizedBox(height: 10.0),
          ReservationCard(
            name: 'Paulo',
            roomType: 'Quarto Duplo',
            price: 99.90,
            paid: false,
          ),
        ],
      ),
    );
  }
}

class ReservationCard extends StatelessWidget {
  final String name;
  final String roomType;
  final double price;
  final bool paid;

  ReservationCard({
    required this.name,
    required this.roomType,
    required this.price,
    required this.paid,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        subtitle: Text('Quarto: $roomType'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('R\$ ${price.toStringAsFixed(2)} / diária'),
            SizedBox(height: 8.0),
            paid
                ? Text(
                    'Pago',
                    style: TextStyle(color: Colors.green),
                  )
                : ElevatedButton(
              onPressed: () {
                      },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                        vertical: 5.0,
                      ),
                      child: Text('Pagar'),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
