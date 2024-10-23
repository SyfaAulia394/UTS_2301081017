import 'package:flutter/material.dart';
import 'peminjaman.dart'; 

class LoanCalculationScreen extends StatefulWidget {
  @override
  _LoanCalculationScreenState createState() => _LoanCalculationScreenState();
}

class _LoanCalculationScreenState extends State<LoanCalculationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pinjamanController = TextEditingController();
  final TextEditingController _lamaPinjamanController = TextEditingController();
  double? angsuranPerBulan;
  double? totalHutang;

  void _calculateLoan() {
    if (_formKey.currentState!.validate()) {
      double jumlahPinjaman = double.parse(_pinjamanController.text);
      int lamaPinjaman = int.parse(_lamaPinjamanController.text);

      Peminjaman peminjaman = Peminjaman(
        kode: 'P01',
        nama: 'Simpan & Pinjam',
        kodePeminjaman: '12345',
        tanggal: '2024-10-23',
        kodeNasabah: 'N01',
        namaNasabah: 'Syfa Aulia',
        jumlahPinjaman: jumlahPinjaman,
        lamaPinjaman: lamaPinjaman,
      );
      setState(() {
        angsuranPerBulan = peminjaman.angsuranPerBulan;
        totalHutang = peminjaman.totalHutang;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peminjaman Syfa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _pinjamanController,
                decoration: InputDecoration(labelText: 'Jumlah Pinjaman'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Jumlah Pinjaman';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _lamaPinjamanController,
                decoration: InputDecoration(labelText: 'Lama Pinjaman (Bulan)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Lama Pinjaman';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateLoan,
                child: Text('Hitung'),
              ),
              if (angsuranPerBulan != null && totalHutang != null)
                Column(
                  children: [
                    Text('Angsuran Per Bulan: Rp ${angsuranPerBulan!.toStringAsFixed(2)}'),
                    Text('Total Hutang: Rp ${totalHutang!.toStringAsFixed(2)}'),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
