
import 'package:flutter/material.dart';

// Widget Kartu Mahasiswa
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(nama),
        subtitle: Text('NIM: $nim'),
        trailing: const Icon(Icons.arrow_forward_ios),

        // Ketika kartu diklik, buka halaman profil
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HalamanProfil(
                nama: nama,
                nim: nim,
                prodi: prodi,
              ),
            ),
          );
        },
      ),
    );
  }
}

// Halaman Daftar Mahasiswa
class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            KartuMahasiswa(
              nama: 'Achmad Ricky Hariono',
              nim: '3012410009',
              prodi: 'Informatika',
            ),

            KartuMahasiswa(
              nama: 'Budi Santoso',
              nim: '3012410010',
              prodi: 'Informatika',
            ),

            KartuMahasiswa(
              nama: 'Andi Pratama',
              nim: '3012410011',
              prodi: 'Informatika',
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Profil Mahasiswa
class HalamanProfil extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const HalamanProfil({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto profil
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // Nama mahasiswa
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              Text('NIM: $nim'),
              Text('Program Studi: $prodi'),

              const SizedBox(height: 25),

              // Ikon kontak
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone, color: Colors.blue, size: 28),
                    Icon(Icons.email, color: Colors.blue, size: 28),
                    Icon(Icons.location_on, color: Colors.blue, size: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
