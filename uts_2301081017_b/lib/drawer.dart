import 'package:flutter/material.dart';
import 'loan_calculation_screen.dart'; 

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Peminjaman Syfa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoanCalculationScreen()),
              );
            },
          ),
          
        ],
      ),
    );
  }
}
