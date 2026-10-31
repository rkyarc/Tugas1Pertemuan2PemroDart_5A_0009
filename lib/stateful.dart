import 'package:flutter/material.dart';

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {

  // Variabel untuk menyimpan nilai counter
  int counter = 0;

  // Fungsi tambah
  void tambah() {
    setState(() {
      counter++;
    });
  }

  // Fungsi kurang
  void kurang() {
    setState(() {
      counter--;
    });
  }

  // Fungsi reset
  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Stateful'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 20),

            // Menampilkan nilai counter
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Tombol tambah
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kurang,
                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: tambah,
                  child: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Tombol reset
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
